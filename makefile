CONFIGURATION=Debug
OUTPUT_DIR=${PWD}/.output
PROJECT_FILE=Utils.ForwardedPrefix/Utils.ForwardedPrefix.csproj

init: clean restore build

clean:
	@rm -Rf $(OUTPUT_DIR)
	@mkdir $(OUTPUT_DIR)
	@cd src && dotnet clean -c Debug -v q
	@cd src && dotnet clean -c Release -v q

restore:
	@cd src && dotnet restore -v q

build:
	@cd src && dotnet build -c $(CONFIGURATION) -v m

package:
	@cd src && dotnet pack --no-build -c $(CONFIGURATION) -o $(OUTPUT_DIR) $(PROJECT_FILE)

release: CONFIGURATION=Release
release: clean restore build package
