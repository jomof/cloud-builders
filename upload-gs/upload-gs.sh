UPLOAD_FOLDER=${UPLOAD_FOLDER:-.}
SHORT_SHA=${SHORT_SHA:-local-build}
echo UPLOAD_FOLDER=[${UPLOAD_FOLDER}]
echo SUBPROJECT_ID=[${SUBPROJECT_ID}]
echo BUILD_ID=[${BUILD_ID}]
echo gsutil rsync $UPLOAD_FOLDER/./* gs://my-web-apis_cloudbuild/artifacts/$SUBPROJECT_ID/latest/
gsutil rsync $UPLOAD_FOLDER/./* gs://my-web-apis_cloudbuild/artifacts/$SUBPROJECT_ID/latest/
gsutil rsync $UPLOAD_FOLDER/./* gs://my-web-apis_cloudbuild/artifacts/$SUBPROJECT_ID/commit-$SHORT_SHA/
gsutil rsync $UPLOAD_FOLDER/./* gs://my-web-apis_cloudbuild/artifacts/$SUBPROJECT_ID/build-$BUILD_ID/