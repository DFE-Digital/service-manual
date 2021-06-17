#!/usr/bin/env bash

cat > vars.yml <<EOF
contentful_api_key: ${CONTENTFUL_API_KEY}
contentful_preview_api_key: ${CONTENTFUL_PREVIEW_API_KEY}
contentful_space: ${CONTENTFUL_SPACE}
google_analytics_tracking_id: ${GOOGLE_ANALYTICS_TRACKING_ID}
secret_key_base: ${SECRET_KEY_BASE}
EOF
