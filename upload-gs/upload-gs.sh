UPLOAD_FOLDER=${UPLOAD_FOLDER:-.}
SHORT_SHA=${SHORT_SHA:-local-build}
PACKAGE_VERSION=${PACKAGE_VERSION:-0.0.1}
echo gsutil rsync $UPLOAD_FOLDER gs://my-web-apis_cloudbuild/artifacts/$SUBPROJECT_ID-${PACKAGE_VERSION}/latest/
gsutil rsync $UPLOAD_FOLDER gs://my-web-apis_cloudbuild/artifacts/$SUBPROJECT_ID-${PACKAGE_VERSION}/latest/
gsutil rsync $UPLOAD_FOLDER gs://my-web-apis_cloudbuild/artifacts/$SUBPROJECT_ID-${PACKAGE_VERSION}/commit-$SHORT_SHA/
gsutil rsync $UPLOAD_FOLDER gs://my-web-apis_cloudbuild/artifacts/$SUBPROJECT_ID-${PACKAGE_VERSION}/build-$BUILD_ID/