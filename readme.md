# DFDS.Utils.ForwardedPrefix

## Introduction
This is a small utility that takes the http headers `X-Forwarded-Proto` and `X-Forwarded-Prefix` on incomming requests and assigns the as the base path of that incomming request. This lets your application generate proper urls for links etc. when returning them in your responses.

## Installation
The utility is available one [NuGet.org](https://www.nuget.org/packages/dfds.utils.forwardedprefix) and can be installed by searching for `DFDS.Utils.ForwardedPrefix` in your prefered editor/IDE.

...or by navigating to your _ASP.NET_ project on the commandline and then run the following command:

```shell
dotnet add package dfds.utils.forwardedprefix
```

...or in your package manager console:
```shell
PM> install-package dfds.utils.forwardedprefix
```

## Usage
TODO: examples!