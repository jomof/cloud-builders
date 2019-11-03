BUILD_FLAVOR=${BUILD_FLAVOR:-Release}
PACKAGE_VERSION=${PACKAGE_VERSION:-1.0.0}
dotnet build -p:Version=$PACKAGE_VERSION -c Release -o /workspace/out