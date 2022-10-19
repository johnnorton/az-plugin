#!/bin/sh
az blob push $PLUGIN_FILE_PATH

cat > $PLUGIN_ARTIFACT_FILE << 'EOF'
{
  "kind": "fileUpload/v1",
  "data": {
    "fileArtifacts": [
      {
        "name": "TESTRESULTS",
        "url": "https://www.azureblob.com"
      },
      {
        "name": "TESTRESULTS",
        "url": "https://www.azureblob.com"
      },
      
    ]
  }
}
EOF

echo "Pushed this to"
cat $PLUGIN_ARTIFACT_FILE
