BUILD_FLAVOR=${BUILD_FLAVOR:-Release}
PACKAGE_VERSION=${PACKAGE_VERSION:-1.0.0}
dotnet nuget push JapaneseDataModel.${PACKAGE_VERSION}.nupkg -k $_NUGET_TOKEN -s https://api.nuget.org/v3/index.json