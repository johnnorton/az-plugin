#!/bin/sh
echo $PLUGIN_ARTIFACT_FILE

cat >$PLUGIN_ARTIFACT_FILE << 'EOF'
{
  "kind": "fileUpload/v1",
  "data": {
    "fileArtifacts": [
      {
        "name": "Docker",
        "url": "https://www.google.com"
      }
    ]
  }
}
EOF

cat $PLUGIN_ARTIFACT_FILE
