CONFIGURATION=Debug
OUTPUT_DIR=${PWD}/.output

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
