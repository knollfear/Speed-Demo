---
to: "<%= name ? `${name}` : 'ui' %>/config/settings/.defaults.yml"
---
# The Gateway API endpoint
apiUrl: ${cf:${self:custom.settings.backendStackName}.ServiceEndpoint}

# The stack name of the 'backend' serverless service
backendStackName: ${self:custom.settings.namespace}-backend

# The stack name of the 'cloudfront' serverless service
infrastructureStackName: ${self:custom.settings.namespace}-infrastructure

# The S3 bucket name used to host the static website
websiteBucketName: ${cf:${self:custom.settings.infrastructureStackName}.WebsiteBucket}

# The id of the CloudFront distribution for the static website
websiteCloudFrontId: ${cf:${self:custom.settings.infrastructureStackName}.CloudFrontId}

# URL of the website
websiteUrl: ${cf:${self:custom.settings.infrastructureStackName}.WebsiteUrl}