# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::APIGateway
  module Types

    # Represents an AWS account that is associated with Amazon API Gateway.
    #
    # <div class="remarks" markdown="1">
    # To view the account info, call `GET` on this resource.
    #
    # #### Error Codes
    #
    # The following exception may be thrown when the request fails.
    #
    # * UnauthorizedException
    # * NotFoundException
    # * TooManyRequestsException
    #
    # For detailed error code information, including the corresponding HTTP
    # Status Codes, see [API Gateway Error Codes][1]
    #
    # #### Example: Get the information about an account.
    #
    # ##### Request
    #
    #     GET /account HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160531T184618Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
    #
    # ##### Response
    #
    # The successful response returns a `200 OK` status code and a payload
    # similar to the following:
    #
    #     \{ "_links": \{ "curies": \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/account-apigateway-\{rel\}.html", "name": "account", "templated": true \}, "self": \{ "href": "/account" \}, "account:update": \{ "href": "/account" \} \}, "cloudwatchRoleArn": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "throttleSettings": \{ "rateLimit": 500, "burstLimit": 1000 \} \}
    #
    # In addition to making the REST API call directly, you can use the AWS
    # CLI and an AWS SDK to access this resource.
    #
    # </div>
    #
    # <div class="seeAlso">
    # [API Gateway Limits][2] [Developer Guide][3], [AWS CLI][4]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/api-reference/handling-errors/#api-error-codes
    # [2]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-limits.html
    # [3]: http://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html
    # [4]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-account.html
    #
    # @!attribute [rw] cloudwatch_role_arn
    #   The ARN of an Amazon CloudWatch role for the current Account.
    #   @return [String]
    #
    # @!attribute [rw] throttle_settings
    #   Specifies the API request limits configured for the current Account.
    #   @return [Types::ThrottleSettings]
    #
    # @!attribute [rw] features
    #   A list of features supported for the account. When usage plans are
    #   enabled, the features list will include an entry of `"UsagePlans"`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] api_key_version
    #   The version of the API keys used for the account.
    #   @return [String]
    #
    class Account < Struct.new(
      :cloudwatch_role_arn,
      :throttle_settings,
      :features,
      :api_key_version)
      include Aws::Structure
    end

    # A resource that can be distributed to callers for executing Method
    # resources that require an API key. API keys can be mapped to any Stage
    # on any RestApi, which indicates that the callers with the API key can
    # make requests to that stage.
    #
    # <div class="seeAlso">
    # [Use API Keys][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-api-keys.html
    #
    # @!attribute [rw] id
    #   The identifier of the API Key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the API Key.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the API Key.
    #   @return [String]
    #
    # @!attribute [rw] customer_id
    #   An AWS Marketplace customer identifier , when integrating with the
    #   AWS SaaS Marketplace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the API Key.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the API Key can be used by callers.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_date
    #   The date when the API Key was created, in [ISO 8601 format][1].
    #
    #
    #
    #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   When the API Key was last updated, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] stage_keys
    #   A list of Stage resources that are associated with the ApiKey
    #   resource.
    #   @return [Array<String>]
    #
    class ApiKey < Struct.new(
      :id,
      :value,
      :name,
      :customer_id,
      :description,
      :enabled,
      :created_date,
      :last_updated_date,
      :stage_keys)
      include Aws::Structure
    end

    # The identifier of an ApiKey used in a UsagePlan.
    #
    # @!attribute [rw] ids
    #   A list of all the ApiKey identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] warnings
    #   A list of warning messages.
    #   @return [Array<String>]
    #
    class ApiKeyIds < Struct.new(
      :ids,
      :warnings)
      include Aws::Structure
    end

    # Represents a collection of API keys as represented by an ApiKeys
    # resource.
    #
    # <div class="seeAlso">
    # [Use API Keys][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-api-keys.html
    #
    # @!attribute [rw] warnings
    #   A list of warning messages logged during the import of API keys when
    #   the `failOnWarnings` option is set to true.
    #   @return [Array<String>]
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of any ApiKey resources in the collection of ApiKey
    #   resources.
    #   @return [Array<Types::ApiKey>]
    #
    class ApiKeys < Struct.new(
      :warnings,
      :position,
      :items)
      include Aws::Structure
    end

    # API stage name of the associated API stage in a usage plan.
    #
    # @note When making an API call, you may pass ApiStage
    #   data as a hash:
    #
    #       {
    #         api_id: "String",
    #         stage: "String",
    #       }
    #
    # @!attribute [rw] api_id
    #   API Id of the associated API stage in a usage plan.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   API stage name of the associated API stage in a usage plan.
    #   @return [String]
    #
    class ApiStage < Struct.new(
      :api_id,
      :stage)
      include Aws::Structure
    end

    # Represents an authorization layer for methods. If enabled on a method,
    # API Gateway will activate the authorizer when a client calls the
    # method.
    #
    # <div class="seeAlso">
    # [Enable custom authorization][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html
    #
    # @!attribute [rw] id
    #   The identifier for the authorizer resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   \[Required\] The name of the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   \[Required\] The type of the authorizer. Currently, the valid type
    #   is `TOKEN` for a Lambda function or `COGNITO_USER_POOLS` for an
    #   Amazon Cognito user pool.
    #   @return [String]
    #
    # @!attribute [rw] provider_arns
    #   A list of the provider ARNs of the authorizer. For an `TOKEN`
    #   authorizer, this is not defined. For authorizers of the
    #   `COGNITO_USER_POOLS` type, each element corresponds to a user pool
    #   ARN of this format:
    #   `arn:aws:cognito-idp:\{region\}:\{account_id\}:userpool/\{user_pool_id\}`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auth_type
    #   Optional customer-defined field, used in Swagger imports/exports.
    #   Has no functional impact.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   \[Required\] Specifies the authorizer's Uniform Resource Identifier
    #   (URI). For `TOKEN` authorizers, this must be a well-formed Lambda
    #   function URI, for example,
    #   `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:\{account_id\}:function:\{lambda_function_name\}/invocations`.
    #   In general, the URI has this form
    #   `arn:aws:apigateway:\{region\}:lambda:path/\{service_api\}`, where
    #   `\{region\}` is the same as the region hosting the Lambda function,
    #   `path` indicates that the remaining substring in the URI should be
    #   treated as the path to the resource, including the initial `/`. For
    #   Lambda functions, this is usually of the form
    #   /2015-03-31/functions/\[FunctionARN\]/invocations.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_credentials
    #   Specifies the credentials required for the authorizer, if any. Two
    #   options are available. To specify an IAM role for Amazon API Gateway
    #   to assume, use the role's Amazon Resource Name (ARN). To use
    #   resource-based permissions on the Lambda function, specify null.
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   \[Required\] The source of the identity in an incoming request. For
    #   a `TOKEN` authorizer, this value is a mapping expression with the
    #   same syntax as integration parameter mappings. The only valid source
    #   for tokens is 'header', so the expression should match
    #   'method.request.header.\[headerName\]'. The value of the header
    #   '\[headerName\]' will be interpreted as the incoming token. For
    #   `COGNITO_USER_POOLS` authorizers, this property is used.
    #   @return [String]
    #
    # @!attribute [rw] identity_validation_expression
    #   A validation expression for the incoming identity. For `TOKEN`
    #   authorizers, this value should be a regular expression. The incoming
    #   token from the client is matched against this expression, and will
    #   proceed if the token matches. If the token doesn't match, the
    #   client receives a 401 Unauthorized response.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   The TTL in seconds of cached authorizer results. If greater than 0,
    #   API Gateway will cache authorizer responses. If this field is not
    #   set, the default value is 300. The maximum value is 3600, or 1 hour.
    #   @return [Integer]
    #
    class Authorizer < Struct.new(
      :id,
      :name,
      :type,
      :provider_arns,
      :auth_type,
      :authorizer_uri,
      :authorizer_credentials,
      :identity_source,
      :identity_validation_expression,
      :authorizer_result_ttl_in_seconds)
      include Aws::Structure
    end

    # Represents a collection of Authorizer resources.
    #
    # <div class="seeAlso">
    # [Enable custom authorization][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Gets the current list of Authorizer resources in the collection.
    #   @return [Array<Types::Authorizer>]
    #
    class Authorizers < Struct.new(
      :position,
      :items)
      include Aws::Structure
    end

    # Represents the base path that callers of the API must provide as part
    # of the URL after the domain name.
    #
    # <div class="remarks">
    # A custom domain name plus a `BasePathMapping` specification identifies
    # a deployed RestApi in a given stage of the owner Account.
    # </div>
    #
    # <div class="seeAlso">
    # [Use Custom Domain Names][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html
    #
    # @!attribute [rw] base_path
    #   The base path name that callers of the API must provide as part of
    #   the URL after the domain name.
    #   @return [String]
    #
    # @!attribute [rw] rest_api_id
    #   The name of the API.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The name of the API's stage.
    #   @return [String]
    #
    class BasePathMapping < Struct.new(
      :base_path,
      :rest_api_id,
      :stage)
      include Aws::Structure
    end

    # Represents a collection of BasePathMapping resources.
    #
    # <div class="seeAlso">
    # [Use Custom Domain Names][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of any BasePathMapping resources in the collection
    #   of base path mapping resources.
    #   @return [Array<Types::BasePathMapping>]
    #
    class BasePathMappings < Struct.new(
      :position,
      :items)
      include Aws::Structure
    end

    # Represents a client certificate used to configure client-side SSL
    # authentication while sending requests to the integration endpoint.
    #
    # <div class="remarks">
    # Client certificates are used authenticate an API by the back-end
    # server. To authenticate an API client (or user), use a custom
    # Authorizer.
    # </div>
    #
    # <div class="seeAlso">
    # [Use Client-Side Certificate][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-client-side-ssl-authentication.html
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of the client certificate.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the client certificate.
    #   @return [String]
    #
    # @!attribute [rw] pem_encoded_certificate
    #   The PEM-encoded public key of the client certificate, which can be
    #   used to configure certificate authentication in the integration
    #   endpoint .
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the client certificate was created, in [ISO 8601
    #   format][1].
    #
    #
    #
    #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   The date when the client certificate will expire, in [ISO 8601
    #   format][1].
    #
    #
    #
    #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
    #   @return [Time]
    #
    class ClientCertificate < Struct.new(
      :client_certificate_id,
      :description,
      :pem_encoded_certificate,
      :created_date,
      :expiration_date)
      include Aws::Structure
    end

    # Represents a collection of ClientCertificate resources.
    #
    # <div class="seeAlso">
    # [Use Client-Side Certificate][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-client-side-ssl-authentication.html
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of any ClientCertificate resources in the
    #   collection of ClientCertificate resources.
    #   @return [Array<Types::ClientCertificate>]
    #
    class ClientCertificates < Struct.new(
      :position,
      :items)
      include Aws::Structure
    end

    # Request to create an ApiKey resource.
    #
    # @note When making an API call, you may pass CreateApiKeyRequest
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         description: "String",
    #         enabled: false,
    #         generate_distinct_id: false,
    #         value: "String",
    #         stage_keys: [
    #           {
    #             rest_api_id: "String",
    #             stage_name: "String",
    #           },
    #         ],
    #         customer_id: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the ApiKey.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the ApiKey.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the ApiKey can be used by callers.
    #   @return [Boolean]
    #
    # @!attribute [rw] generate_distinct_id
    #   Specifies whether (`true`) or not (`false`) the key identifier is
    #   distinct from the created API key value.
    #   @return [Boolean]
    #
    # @!attribute [rw] value
    #   Specifies a value of the API key.
    #   @return [String]
    #
    # @!attribute [rw] stage_keys
    #   DEPRECATED FOR USAGE PLANS - Specifies stages associated with the
    #   API key.
    #   @return [Array<Types::StageKey>]
    #
    # @!attribute [rw] customer_id
    #   An AWS Marketplace customer identifier , when integrating with the
    #   AWS SaaS Marketplace.
    #   @return [String]
    #
    class CreateApiKeyRequest < Struct.new(
      :name,
      :description,
      :enabled,
      :generate_distinct_id,
      :value,
      :stage_keys,
      :customer_id)
      include Aws::Structure
    end

    # Request to add a new Authorizer to an existing RestApi resource.
    #
    # @note When making an API call, you may pass CreateAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         name: "String", # required
    #         type: "TOKEN", # required, accepts TOKEN, COGNITO_USER_POOLS
    #         provider_arns: ["ProviderARN"],
    #         auth_type: "String",
    #         authorizer_uri: "String",
    #         authorizer_credentials: "String",
    #         identity_source: "String", # required
    #         identity_validation_expression: "String",
    #         authorizer_result_ttl_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier under which the Authorizer will be created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   \[Required\] The name of the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   \[Required\] The type of the authorizer.
    #   @return [String]
    #
    # @!attribute [rw] provider_arns
    #   A list of the Cognito Your User Pool authorizer's provider ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auth_type
    #   Optional customer-defined field, used in Swagger imports/exports.
    #   Has no functional impact.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_uri
    #   \[Required\] Specifies the authorizer's Uniform Resource Identifier
    #   (URI).
    #   @return [String]
    #
    # @!attribute [rw] authorizer_credentials
    #   Specifies the credentials required for the authorizer, if any.
    #   @return [String]
    #
    # @!attribute [rw] identity_source
    #   \[Required\] The source of the identity in an incoming request.
    #   @return [String]
    #
    # @!attribute [rw] identity_validation_expression
    #   A validation expression for the incoming identity.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   The TTL of cached authorizer results.
    #   @return [Integer]
    #
    class CreateAuthorizerRequest < Struct.new(
      :rest_api_id,
      :name,
      :type,
      :provider_arns,
      :auth_type,
      :authorizer_uri,
      :authorizer_credentials,
      :identity_source,
      :identity_validation_expression,
      :authorizer_result_ttl_in_seconds)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to create a new BasePathMapping resource.
    #
    # @note When making an API call, you may pass CreateBasePathMappingRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #         base_path: "String",
    #         rest_api_id: "String", # required
    #         stage: "String",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain name of the BasePathMapping resource to create.
    #   @return [String]
    #
    # @!attribute [rw] base_path
    #   The base path name that callers of the API must provide as part of
    #   the URL after the domain name. This value must be unique for all of
    #   the mappings across a single API. Leave this blank if you do not
    #   want callers to specify a base path name after the domain name.
    #   @return [String]
    #
    # @!attribute [rw] rest_api_id
    #   The name of the API that you want to apply this mapping to.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The name of the API's stage that you want to use for this mapping.
    #   Leave this blank if you do not want callers to explicitly specify
    #   the stage name after any base path name.
    #   @return [String]
    #
    class CreateBasePathMappingRequest < Struct.new(
      :domain_name,
      :base_path,
      :rest_api_id,
      :stage)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to create a Deployment resource.
    #
    # @note When making an API call, you may pass CreateDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         stage_name: "String",
    #         stage_description: "String",
    #         description: "String",
    #         cache_cluster_enabled: false,
    #         cache_cluster_size: "0.5", # accepts 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118, 237
    #         variables: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi resource identifier for the Deployment resource to
    #   create.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the Stage resource for the Deployment resource to
    #   create.
    #   @return [String]
    #
    # @!attribute [rw] stage_description
    #   The description of the Stage resource for the Deployment resource to
    #   create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the Deployment resource to create.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_enabled
    #   Enables a cache cluster for the Stage resource specified in the
    #   input.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_cluster_size
    #   Specifies the cache cluster size for the Stage resource specified in
    #   the input, if a cache cluster is enabled.
    #   @return [String]
    #
    # @!attribute [rw] variables
    #   A map that defines the stage variables for the Stage resource that
    #   is associated with the new deployment. Variable names can have
    #   alphanumeric and underscore characters, and the values must match
    #   `[A-Za-z0-9-._~:/?#&=,]+`.
    #   @return [Hash<String,String>]
    #
    class CreateDeploymentRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :stage_description,
      :description,
      :cache_cluster_enabled,
      :cache_cluster_size,
      :variables)
      include Aws::Structure
    end

    # Creates a new documentation part of a given API.
    #
    # @note When making an API call, you may pass CreateDocumentationPartRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         location: { # required
    #           type: "API", # required, accepts API, AUTHORIZER, MODEL, RESOURCE, METHOD, PATH_PARAMETER, QUERY_PARAMETER, REQUEST_HEADER, REQUEST_BODY, RESPONSE, RESPONSE_HEADER, RESPONSE_BODY
    #           path: "String",
    #           method: "String",
    #           status_code: "DocumentationPartLocationStatusCode",
    #           name: "String",
    #         },
    #         properties: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   \[Required\] The identifier of an API of the to-be-created
    #   documentation part.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   \[Required\] The location of the targeted API entity of the
    #   to-be-created documentation part.
    #   @return [Types::DocumentationPartLocation]
    #
    # @!attribute [rw] properties
    #   \[Required\] The new documentation content map of the targeted API
    #   entity. Enclosed key-value pairs are API-specific, but only
    #   Swagger-compliant key-value pairs can be exported and, hence,
    #   published.
    #   @return [String]
    #
    class CreateDocumentationPartRequest < Struct.new(
      :rest_api_id,
      :location,
      :properties)
      include Aws::Structure
    end

    # Creates a new documentation version of a given API.
    #
    # @note When making an API call, you may pass CreateDocumentationVersionRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         documentation_version: "String", # required
    #         stage_name: "String",
    #         description: "String",
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   \[Required\] Specifies the API identifier of the to-be-created
    #   documentation version.
    #   @return [String]
    #
    # @!attribute [rw] documentation_version
    #   \[Required\] The version identifier of the new snapshot.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The stage name to be associated with the new documentation snapshot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description about the new documentation snapshot.
    #   @return [String]
    #
    class CreateDocumentationVersionRequest < Struct.new(
      :rest_api_id,
      :documentation_version,
      :stage_name,
      :description)
      include Aws::Structure
    end

    # A request to create a new domain name.
    #
    # @note When making an API call, you may pass CreateDomainNameRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #         certificate_name: "String", # required
    #         certificate_body: "String", # required
    #         certificate_private_key: "String", # required
    #         certificate_chain: "String", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the DomainName resource.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The name of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_body
    #   The body of the server certificate provided by your certificate
    #   authority.
    #   @return [String]
    #
    # @!attribute [rw] certificate_private_key
    #   Your certificate's private key.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   The intermediate certificates and optionally the root certificate,
    #   one after the other without any blank lines. If you include the root
    #   certificate, your certificate chain must start with intermediate
    #   certificates and end with the root certificate. Use the intermediate
    #   certificates that were provided by your certificate authority. Do
    #   not include any intermediaries that are not in the chain of trust
    #   path.
    #   @return [String]
    #
    class CreateDomainNameRequest < Struct.new(
      :domain_name,
      :certificate_name,
      :certificate_body,
      :certificate_private_key,
      :certificate_chain)
      include Aws::Structure
    end

    # Request to add a new Model to an existing RestApi resource.
    #
    # @note When making an API call, you may pass CreateModelRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         name: "String", # required
    #         description: "String",
    #         schema: "String",
    #         content_type: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier under which the Model will be created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the model.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema for the model. For `application/json` models, this should
    #   be [JSON-schema draft v4][1] model.
    #
    #
    #
    #   [1]: http://json-schema.org/documentation.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content-type for the model.
    #   @return [String]
    #
    class CreateModelRequest < Struct.new(
      :rest_api_id,
      :name,
      :description,
      :schema,
      :content_type)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to create a Resource resource.
    #
    # @note When making an API call, you may pass CreateResourceRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         parent_id: "String", # required
    #         path_part: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The identifier of the RestApi for the resource.
    #   @return [String]
    #
    # @!attribute [rw] parent_id
    #   The parent resource's identifier.
    #   @return [String]
    #
    # @!attribute [rw] path_part
    #   The last path segment for this resource.
    #   @return [String]
    #
    class CreateResourceRequest < Struct.new(
      :rest_api_id,
      :parent_id,
      :path_part)
      include Aws::Structure
    end

    # The POST Request to add a new RestApi resource to your collection.
    #
    # @note When making an API call, you may pass CreateRestApiRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         description: "String",
    #         version: "String",
    #         clone_from: "String",
    #         binary_media_types: ["String"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the RestApi.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the RestApi.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A version identifier for the API.
    #   @return [String]
    #
    # @!attribute [rw] clone_from
    #   The ID of the RestApi that you want to clone from.
    #   @return [String]
    #
    # @!attribute [rw] binary_media_types
    #   The list of binary media types supported by the RestApi. By default,
    #   the RestApi supports only UTF-8-encoded text payloads.
    #   @return [Array<String>]
    #
    class CreateRestApiRequest < Struct.new(
      :name,
      :description,
      :version,
      :clone_from,
      :binary_media_types)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to create a Stage resource.
    #
    # @note When making an API call, you may pass CreateStageRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         stage_name: "String", # required
    #         deployment_id: "String", # required
    #         description: "String",
    #         cache_cluster_enabled: false,
    #         cache_cluster_size: "0.5", # accepts 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118, 237
    #         variables: {
    #           "String" => "String",
    #         },
    #         documentation_version: "String",
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The identifier of the RestApi resource for the Stage resource to
    #   create.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name for the Stage resource.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the Deployment resource for the Stage resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Stage resource.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_enabled
    #   Whether cache clustering is enabled for the stage.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_cluster_size
    #   The stage's cache cluster size.
    #   @return [String]
    #
    # @!attribute [rw] variables
    #   A map that defines the stage variables for the new Stage resource.
    #   Variable names can have alphanumeric and underscore characters, and
    #   the values must match `[A-Za-z0-9-._~:/?#&=,]+`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] documentation_version
    #   The version of the associated API documentation.
    #   @return [String]
    #
    class CreateStageRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :deployment_id,
      :description,
      :cache_cluster_enabled,
      :cache_cluster_size,
      :variables,
      :documentation_version)
      include Aws::Structure
    end

    # The POST request to create a usage plan key for adding an existing API
    # key to a usage plan.
    #
    # @note When making an API call, you may pass CreateUsagePlanKeyRequest
    #   data as a hash:
    #
    #       {
    #         usage_plan_id: "String", # required
    #         key_id: "String", # required
    #         key_type: "String", # required
    #       }
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the UsagePlan resource representing the usage plan
    #   containing the to-be-created UsagePlanKey resource representing a
    #   plan customer.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The identifier of a UsagePlanKey resource for a plan customer.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The type of a UsagePlanKey resource for a plan customer.
    #   @return [String]
    #
    class CreateUsagePlanKeyRequest < Struct.new(
      :usage_plan_id,
      :key_id,
      :key_type)
      include Aws::Structure
    end

    # The POST request to create a usage plan with the name, description,
    # throttle limits and quota limits, as well as the associated API
    # stages, specified in the payload.
    #
    # @note When making an API call, you may pass CreateUsagePlanRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         description: "String",
    #         api_stages: [
    #           {
    #             api_id: "String",
    #             stage: "String",
    #           },
    #         ],
    #         throttle: {
    #           burst_limit: 1,
    #           rate_limit: 1.0,
    #         },
    #         quota: {
    #           limit: 1,
    #           offset: 1,
    #           period: "DAY", # accepts DAY, WEEK, MONTH
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the usage plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the usage plan.
    #   @return [String]
    #
    # @!attribute [rw] api_stages
    #   The associated API stages of the usage plan.
    #   @return [Array<Types::ApiStage>]
    #
    # @!attribute [rw] throttle
    #   The throttling limits of the usage plan.
    #   @return [Types::ThrottleSettings]
    #
    # @!attribute [rw] quota
    #   The quota of the usage plan.
    #   @return [Types::QuotaSettings]
    #
    class CreateUsagePlanRequest < Struct.new(
      :name,
      :description,
      :api_stages,
      :throttle,
      :quota)
      include Aws::Structure
    end

    # A request to delete the ApiKey resource.
    #
    # @note When making an API call, you may pass DeleteApiKeyRequest
    #   data as a hash:
    #
    #       {
    #         api_key: "String", # required
    #       }
    #
    # @!attribute [rw] api_key
    #   The identifier of the ApiKey resource to be deleted.
    #   @return [String]
    #
    class DeleteApiKeyRequest < Struct.new(
      :api_key)
      include Aws::Structure
    end

    # Request to delete an existing Authorizer resource.
    #
    # @note When making an API call, you may pass DeleteAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         authorizer_id: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the Authorizer resource.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of the Authorizer resource.
    #   @return [String]
    #
    class DeleteAuthorizerRequest < Struct.new(
      :rest_api_id,
      :authorizer_id)
      include Aws::Structure
    end

    # A request to delete the BasePathMapping resource.
    #
    # @note When making an API call, you may pass DeleteBasePathMappingRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #         base_path: "String", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain name of the BasePathMapping resource to delete.
    #   @return [String]
    #
    # @!attribute [rw] base_path
    #   The base path name of the BasePathMapping resource to delete.
    #   @return [String]
    #
    class DeleteBasePathMappingRequest < Struct.new(
      :domain_name,
      :base_path)
      include Aws::Structure
    end

    # A request to delete the ClientCertificate resource.
    #
    # @note When making an API call, you may pass DeleteClientCertificateRequest
    #   data as a hash:
    #
    #       {
    #         client_certificate_id: "String", # required
    #       }
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of the ClientCertificate resource to be deleted.
    #   @return [String]
    #
    class DeleteClientCertificateRequest < Struct.new(
      :client_certificate_id)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to delete a Deployment resource.
    #
    # @note When making an API call, you may pass DeleteDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         deployment_id: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The identifier of the RestApi resource for the Deployment resource
    #   to delete.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the Deployment resource to delete.
    #   @return [String]
    #
    class DeleteDeploymentRequest < Struct.new(
      :rest_api_id,
      :deployment_id)
      include Aws::Structure
    end

    # Deletes an existing documentation part of an API.
    #
    # @note When making an API call, you may pass DeleteDocumentationPartRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         documentation_part_id: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   \[Required\] Specifies the identifier of an API of the to-be-deleted
    #   documentation part.
    #   @return [String]
    #
    # @!attribute [rw] documentation_part_id
    #   \[Required\] The identifier of the to-be-deleted documentation part.
    #   @return [String]
    #
    class DeleteDocumentationPartRequest < Struct.new(
      :rest_api_id,
      :documentation_part_id)
      include Aws::Structure
    end

    # Deletes an existing documentation version of an API.
    #
    # @note When making an API call, you may pass DeleteDocumentationVersionRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         documentation_version: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   \[Required\] The identifier of an API of a to-be-deleted
    #   documentation snapshot.
    #   @return [String]
    #
    # @!attribute [rw] documentation_version
    #   \[Required\] The version identifier of a to-be-deleted documentation
    #   snapshot.
    #   @return [String]
    #
    class DeleteDocumentationVersionRequest < Struct.new(
      :rest_api_id,
      :documentation_version)
      include Aws::Structure
    end

    # A request to delete the DomainName resource.
    #
    # @note When making an API call, you may pass DeleteDomainNameRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the DomainName resource to be deleted.
    #   @return [String]
    #
    class DeleteDomainNameRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # Represents a delete integration request.
    #
    # @note When making an API call, you may pass DeleteIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   Specifies a delete integration request's API identifier.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a delete integration request's resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies a delete integration request's HTTP method.
    #   @return [String]
    #
    class DeleteIntegrationRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method)
      include Aws::Structure
    end

    # Represents a delete integration response request.
    #
    # @note When making an API call, you may pass DeleteIntegrationResponseRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #         status_code: "StatusCode", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   Specifies a delete integration response request's API identifier.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a delete integration response request's resource
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies a delete integration response request's HTTP method.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Specifies a delete integration response request's status code.
    #   @return [String]
    #
    class DeleteIntegrationResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code)
      include Aws::Structure
    end

    # Request to delete an existing Method resource.
    #
    # @note When making an API call, you may pass DeleteMethodRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP verb of the Method resource.
    #   @return [String]
    #
    class DeleteMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method)
      include Aws::Structure
    end

    # A request to delete an existing MethodResponse resource.
    #
    # @note When making an API call, you may pass DeleteMethodResponseRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #         status_code: "StatusCode", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the MethodResponse resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the MethodResponse resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP verb of the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code identifier for the MethodResponse resource.
    #   @return [String]
    #
    class DeleteMethodResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code)
      include Aws::Structure
    end

    # Request to delete an existing model in an existing RestApi resource.
    #
    # @note When making an API call, you may pass DeleteModelRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         model_name: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi under which the model will be deleted.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model to delete.
    #   @return [String]
    #
    class DeleteModelRequest < Struct.new(
      :rest_api_id,
      :model_name)
      include Aws::Structure
    end

    # Request to delete a Resource.
    #
    # @note When making an API call, you may pass DeleteResourceRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the Resource resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the Resource resource.
    #   @return [String]
    #
    class DeleteResourceRequest < Struct.new(
      :rest_api_id,
      :resource_id)
      include Aws::Structure
    end

    # Request to delete the specified API from your collection.
    #
    # @note When making an API call, you may pass DeleteRestApiRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The ID of the RestApi you want to delete.
    #   @return [String]
    #
    class DeleteRestApiRequest < Struct.new(
      :rest_api_id)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to delete a Stage resource.
    #
    # @note When making an API call, you may pass DeleteStageRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         stage_name: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The identifier of the RestApi resource for the Stage resource to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the Stage resource to delete.
    #   @return [String]
    #
    class DeleteStageRequest < Struct.new(
      :rest_api_id,
      :stage_name)
      include Aws::Structure
    end

    # The DELETE request to delete a usage plan key and remove the
    # underlying API key from the associated usage plan.
    #
    # @note When making an API call, you may pass DeleteUsagePlanKeyRequest
    #   data as a hash:
    #
    #       {
    #         usage_plan_id: "String", # required
    #         key_id: "String", # required
    #       }
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the UsagePlan resource representing the usage plan
    #   containing the to-be-deleted UsagePlanKey resource representing a
    #   plan customer.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The Id of the UsagePlanKey resource to be deleted.
    #   @return [String]
    #
    class DeleteUsagePlanKeyRequest < Struct.new(
      :usage_plan_id,
      :key_id)
      include Aws::Structure
    end

    # The DELETE request to delete a uasge plan of a given plan Id.
    #
    # @note When making an API call, you may pass DeleteUsagePlanRequest
    #   data as a hash:
    #
    #       {
    #         usage_plan_id: "String", # required
    #       }
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the to-be-deleted usage plan.
    #   @return [String]
    #
    class DeleteUsagePlanRequest < Struct.new(
      :usage_plan_id)
      include Aws::Structure
    end

    # An immutable representation of a RestApi resource that can be called
    # by users using Stages. A deployment must be associated with a Stage
    # for it to be callable over the Internet.
    #
    # <div class="remarks">
    # To create a deployment, call `POST` on the Deployments resource of a
    # RestApi. To view, update, or delete a deployment, call `GET`, `PATCH`,
    # or `DELETE` on the specified deployment resource
    # (`/restapis/\{restapi_id\}/deployments/\{deployment_id\}`).
    # </div>
    #
    # <div class="seeAlso">
    # RestApi, Deployments, Stage, [AWS CLI][1], [AWS SDKs][2]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-deployment.html
    # [2]: https://aws.amazon.com/tools/
    #
    # @!attribute [rw] id
    #   The identifier for the deployment resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the deployment resource.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time that the deployment resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] api_summary
    #   A summary of the RestApi at the date and time that the deployment
    #   resource was created.
    #   @return [Hash<String,Hash<String,Types::MethodSnapshot>>]
    #
    class Deployment < Struct.new(
      :id,
      :description,
      :created_date,
      :api_summary)
      include Aws::Structure
    end

    # Represents a collection resource that contains zero or more references
    # to your existing deployments, and links that guide you on how to
    # interact with your collection. The collection offers a paginated view
    # of the contained deployments.
    #
    # <div class="remarks">
    # To create a new deployment of a RestApi, make a `POST` request against
    # this resource. To view, update, or delete an existing deployment, make
    # a `GET`, `PATCH`, or `DELETE` request, respectively, on a specified
    # Deployment resource.
    # </div>
    #
    # <div class="seeAlso">
    # [Deploying an API][1], [AWS CLI][2], [AWS SDKs][3]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html
    # [2]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-deployment.html
    # [3]: https://aws.amazon.com/tools/
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of any Deployment resources in the collection of
    #   deployment resources.
    #   @return [Array<Types::Deployment>]
    #
    class Deployments < Struct.new(
      :position,
      :items)
      include Aws::Structure
    end

    # A documentation part for a targeted API entity.
    #
    # <div class="remarks" markdown="1">
    # A documentation part consists of a content map (`properties`) and a
    # target (`location`). The target specifies an API entity to which the
    # documentation content applies. The supported API entity types are
    # `API`, `AUTHORIZER`, `MODEL`, `RESOURCE`, `METHOD`, `PATH_PARAMETER`,
    # `QUERY_PARAMETER`, `REQUEST_HEADER`, `REQUEST_BODY`, `RESPONSE`,
    # `RESPONSE_HEADER`, and `RESPONSE_BODY`. Valid `location` fields depend
    # on the API entity type. All valid fields are not required.
    #
    # The content map is a JSON string of API-specific key-value pairs.
    # Although an API can use any shape for the content map, only the
    # Swagger-compliant documentation fields will be injected into the
    # associated API entity definition in the exported Swagger definition
    # file.
    #
    # </div>
    #
    # <div class="seeAlso">
    # [Documenting an API][1], DocumentationParts
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html
    #
    # @!attribute [rw] id
    #   The DocumentationPart identifier, generated by Amazon API Gateway
    #   when the `DocumentationPart` is created.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the API entity to which the documentation applies.
    #   Valid fields depend on the targeted API entity type. All the valid
    #   location fields are not required. If not explicitly specified, a
    #   valid location field is treated as a wildcard and associated
    #   documentation content may be inherited by matching entities, unless
    #   overridden.
    #   @return [Types::DocumentationPartLocation]
    #
    # @!attribute [rw] properties
    #   A content map of API-specific key-value pairs describing the
    #   targeted API entity. The map must be encoded as a JSON string, e.g.,
    #   `"\{ "description": "The API does ..." \}"`. Only
    #   Swagger-compliant documentation-related fields from the
    #   <literal>properties</literal>
    #
    #    map are exported and, hence, published as part of the API entity
    #   definitions, while the original documentation parts are exported in
    #   a Swagger extension of `x-amazon-apigateway-documentation`.
    #   @return [String]
    #
    class DocumentationPart < Struct.new(
      :id,
      :location,
      :properties)
      include Aws::Structure
    end

    # A collection of the imported DocumentationPart identifiers.
    #
    # <div class="remarks">
    # This is used to return the result when documentation parts in an
    # external (e.g., Swagger) file are imported into Amazon API Gateway
    # </div>
    #
    # <div class="seeAlso">
    # [Documenting an API][1], [documentationpart:import][2],
    # DocumentationPart
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html
    # [2]: http://docs.aws.amazon.com/apigateway/api-reference/link-relation/documentationpart-import/
    #
    # @!attribute [rw] ids
    #   A list of the returned documentation part identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] warnings
    #   A list of warning messages reported during import of documentation
    #   parts.
    #   @return [Array<String>]
    #
    class DocumentationPartIds < Struct.new(
      :ids,
      :warnings)
      include Aws::Structure
    end

    # Specifies the target API entity to which the documentation applies.
    #
    # @note When making an API call, you may pass DocumentationPartLocation
    #   data as a hash:
    #
    #       {
    #         type: "API", # required, accepts API, AUTHORIZER, MODEL, RESOURCE, METHOD, PATH_PARAMETER, QUERY_PARAMETER, REQUEST_HEADER, REQUEST_BODY, RESPONSE, RESPONSE_HEADER, RESPONSE_BODY
    #         path: "String",
    #         method: "String",
    #         status_code: "DocumentationPartLocationStatusCode",
    #         name: "String",
    #       }
    #
    # @!attribute [rw] type
    #   The type of API entity to which the documentation content applies.
    #   It is a valid and required field for API entity types of `API`,
    #   `AUTHORIZER`, `MODEL`, `RESOURCE`, `METHOD`, `PATH_PARAMETER`,
    #   `QUERY_PARAMETER`, `REQUEST_HEADER`, `REQUEST_BODY`, `RESPONSE`,
    #   `RESPONSE_HEADER`, and `RESPONSE_BODY`. Content inheritance does not
    #   apply to any entity of the `API`, `AUTHROZER`, `MODEL`, or
    #   `RESOURCE` type.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The URL path of the target. It is a valid field for the API entity
    #   types of `RESOURCE`, `METHOD`, `PATH_PARAMETER`, `QUERY_PARAMETER`,
    #   `REQUEST_HEADER`, `REQUEST_BODY`, `RESPONSE`, `RESPONSE_HEADER`, and
    #   `RESPONSE_BODY`. The default value is `/` for the root resource.
    #   When an applicable child entity inherits the content of another
    #   entity of the same type with more general specifications of the
    #   other `location` attributes, the child entity's `path` attribute
    #   must match that of the parent entity as a prefix.
    #   @return [String]
    #
    # @!attribute [rw] method
    #   The HTTP verb of a method. It is a valid field for the API entity
    #   types of `METHOD`, `PATH_PARAMETER`, `QUERY_PARAMETER`,
    #   `REQUEST_HEADER`, `REQUEST_BODY`, `RESPONSE`, `RESPONSE_HEADER`, and
    #   `RESPONSE_BODY`. The default value is `*` for any method. When an
    #   applicable child entity inherits the content of an entity of the
    #   same type with more general specifications of the other `location`
    #   attributes, the child entity's `method` attribute must match that
    #   of the parent entity exactly.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The HTTP status code of a response. It is a valid field for the API
    #   entity types of `RESPONSE`, `RESPONSE_HEADER`, and `RESPONSE_BODY`.
    #   The default value is `*` for any status code. When an applicable
    #   child entity inherits the content of an entity of the same type with
    #   more general specifications of the other `location` attributes, the
    #   child entity's `statusCode` attribute must match that of the parent
    #   entity exactly.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the targeted API entity. It is a valid and required
    #   field for the API entity types of `AUTHORIZER`, `MODEL`,
    #   `PATH_PARAMETER`, `QUERY_PARAMETER`, `REQUEST_HEADER`,
    #   `REQUEST_BODY` and `RESPONSE_HEADER`. It is an invalid field for any
    #   other entity type.
    #   @return [String]
    #
    class DocumentationPartLocation < Struct.new(
      :type,
      :path,
      :method,
      :status_code,
      :name)
      include Aws::Structure
    end

    # The collection of documentation parts of an API.
    #
    # <div class="remarks"></div>
    #
    # <div class="seeAlso">
    # [Documenting an API][1], DocumentationPart
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of DocumentationPart resources in the
    #   DocumentationParts collection.
    #   @return [Array<Types::DocumentationPart>]
    #
    class DocumentationParts < Struct.new(
      :position,
      :items)
      include Aws::Structure
    end

    # A snapshot of the documentation of an API.
    #
    # <div class="remarks" markdown="1">
    # Publishing API documentation involves creating a documentation version
    # associated with an API stage and exporting the versioned documentation
    # to an external (e.g., Swagger) file.
    #
    # </div>
    #
    # <div class="seeAlso">
    # [Documenting an API][1], DocumentationPart, DocumentationVersions
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html
    #
    # @!attribute [rw] version
    #   The version identifier of the API documentation snapshot.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the API documentation snapshot is created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the API documentation snapshot.
    #   @return [String]
    #
    class DocumentationVersion < Struct.new(
      :version,
      :created_date,
      :description)
      include Aws::Structure
    end

    # The collection of documentation snapshots of an API.
    #
    # <div class="remarks" markdown="1">
    # Use the DocumentationVersions to manage documentation snapshots
    # associated with various API stages.
    #
    # </div>
    #
    # <div class="seeAlso">
    # [Documenting an API][1], DocumentationPart, DocumentationVersion
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of DocumentationVersion items from the
    #   DocumentationVersions collection of an API.
    #   @return [Array<Types::DocumentationVersion>]
    #
    class DocumentationVersions < Struct.new(
      :position,
      :items)
      include Aws::Structure
    end

    # Represents a domain name that is contained in a simpler, more
    # intuitive URL that can be called.
    #
    # <div class="seeAlso">
    # [Use Client-Side Certificate][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html
    #
    # @!attribute [rw] domain_name
    #   The name of the DomainName resource.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The name of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_upload_date
    #   The date when the certificate was uploaded, in [ISO 8601 format][1].
    #
    #
    #
    #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
    #   @return [Time]
    #
    # @!attribute [rw] distribution_domain_name
    #   The domain name of the Amazon CloudFront distribution. For more
    #   information, see the [Amazon CloudFront documentation][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/documentation/cloudfront/
    #   @return [String]
    #
    class DomainName < Struct.new(
      :domain_name,
      :certificate_name,
      :certificate_upload_date,
      :distribution_domain_name)
      include Aws::Structure
    end

    # Represents a collection of DomainName resources.
    #
    # <div class="seeAlso">
    # [Use Client-Side Certificate][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The current page of any DomainName resources in the collection of
    #   DomainName resources.
    #   @return [Array<Types::DomainName>]
    #
    class DomainNames < Struct.new(
      :position,
      :items)
      include Aws::Structure
    end

    # The binary blob response to GetExport, which contains the generated
    # SDK.
    #
    # @!attribute [rw] content_type
    #   The content-type header value in the HTTP response. This will
    #   correspond to a valid 'accept' type in the request.
    #   @return [String]
    #
    # @!attribute [rw] content_disposition
    #   The content-disposition header value in the HTTP response.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The binary blob response to GetExport, which contains the export.
    #   @return [String]
    #
    class ExportResponse < Struct.new(
      :content_type,
      :content_disposition,
      :body)
      include Aws::Structure
    end

    # Request to flush authorizer cache entries on a specified stage.
    #
    # @note When making an API call, you may pass FlushStageAuthorizersCacheRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         stage_name: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The API identifier of the stage to flush.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage to flush.
    #   @return [String]
    #
    class FlushStageAuthorizersCacheRequest < Struct.new(
      :rest_api_id,
      :stage_name)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to flush a stage's cache.
    #
    # @note When making an API call, you may pass FlushStageCacheRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         stage_name: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The API identifier of the stage to flush its cache.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage to flush its cache.
    #   @return [String]
    #
    class FlushStageCacheRequest < Struct.new(
      :rest_api_id,
      :stage_name)
      include Aws::Structure
    end

    # A request to generate a ClientCertificate resource.
    #
    # @note When making an API call, you may pass GenerateClientCertificateRequest
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #       }
    #
    # @!attribute [rw] description
    #   The description of the ClientCertificate.
    #   @return [String]
    #
    class GenerateClientCertificateRequest < Struct.new(
      :description)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to get information about the current
    # Account resource.
    #
    # @api private
    #
    class GetAccountRequest < Aws::EmptyStructure; end

    # A request to get information about the current ApiKey resource.
    #
    # @note When making an API call, you may pass GetApiKeyRequest
    #   data as a hash:
    #
    #       {
    #         api_key: "String", # required
    #         include_value: false,
    #       }
    #
    # @!attribute [rw] api_key
    #   The identifier of the ApiKey resource.
    #   @return [String]
    #
    # @!attribute [rw] include_value
    #   A boolean flag to specify whether (`true`) or not (`false`) the
    #   result contains the key value.
    #   @return [Boolean]
    #
    class GetApiKeyRequest < Struct.new(
      :api_key,
      :include_value)
      include Aws::Structure
    end

    # A request to get information about the current ApiKeys resource.
    #
    # @note When making an API call, you may pass GetApiKeysRequest
    #   data as a hash:
    #
    #       {
    #         position: "String",
    #         limit: 1,
    #         name_query: "String",
    #         customer_id: "String",
    #         include_values: false,
    #       }
    #
    # @!attribute [rw] position
    #   The position of the current ApiKeys resource to get information
    #   about.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of ApiKeys to get information about.
    #   @return [Integer]
    #
    # @!attribute [rw] name_query
    #   The name of queried API keys.
    #   @return [String]
    #
    # @!attribute [rw] customer_id
    #   The identifier of a customer in AWS Marketplace or an external
    #   system, such as a developer portal.
    #   @return [String]
    #
    # @!attribute [rw] include_values
    #   A boolean flag to specify whether (`true`) or not (`false`) the
    #   result contains key values.
    #   @return [Boolean]
    #
    class GetApiKeysRequest < Struct.new(
      :position,
      :limit,
      :name_query,
      :customer_id,
      :include_values)
      include Aws::Structure
    end

    # Request to describe an existing Authorizer resource.
    #
    # @note When making an API call, you may pass GetAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         authorizer_id: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the Authorizer resource.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of the Authorizer resource.
    #   @return [String]
    #
    class GetAuthorizerRequest < Struct.new(
      :rest_api_id,
      :authorizer_id)
      include Aws::Structure
    end

    # Request to describe an existing Authorizers resource.
    #
    # @note When making an API call, you may pass GetAuthorizersRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         position: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the Authorizers resource.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   If not all Authorizer resources in the response were present, the
    #   position will specify where to start the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Limit the number of Authorizer resources in the response.
    #   @return [Integer]
    #
    class GetAuthorizersRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit)
      include Aws::Structure
    end

    # Request to describe a BasePathMapping resource.
    #
    # @note When making an API call, you may pass GetBasePathMappingRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #         base_path: "String", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain name of the BasePathMapping resource to be described.
    #   @return [String]
    #
    # @!attribute [rw] base_path
    #   The base path name that callers of the API must provide as part of
    #   the URL after the domain name. This value must be unique for all of
    #   the mappings across a single API. Leave this blank if you do not
    #   want callers to specify any base path name after the domain name.
    #   @return [String]
    #
    class GetBasePathMappingRequest < Struct.new(
      :domain_name,
      :base_path)
      include Aws::Structure
    end

    # A request to get information about a collection of BasePathMapping
    # resources.
    #
    # @note When making an API call, you may pass GetBasePathMappingsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #         position: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain name of a BasePathMapping resource.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The position of the current BasePathMapping resource in the
    #   collection to get information about.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of BasePathMapping resources in the collection to
    #   get information about. The default limit is 25. It should be an
    #   integer between 1 - 500.
    #   @return [Integer]
    #
    class GetBasePathMappingsRequest < Struct.new(
      :domain_name,
      :position,
      :limit)
      include Aws::Structure
    end

    # A request to get information about the current ClientCertificate
    # resource.
    #
    # @note When making an API call, you may pass GetClientCertificateRequest
    #   data as a hash:
    #
    #       {
    #         client_certificate_id: "String", # required
    #       }
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of the ClientCertificate resource to be described.
    #   @return [String]
    #
    class GetClientCertificateRequest < Struct.new(
      :client_certificate_id)
      include Aws::Structure
    end

    # A request to get information about a collection of ClientCertificate
    # resources.
    #
    # @note When making an API call, you may pass GetClientCertificatesRequest
    #   data as a hash:
    #
    #       {
    #         position: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] position
    #   The position of the current ClientCertificate resource in the
    #   collection to get information about.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of ClientCertificate resources in the collection
    #   to get information about. The default limit is 25. It should be an
    #   integer between 1 - 500.
    #   @return [Integer]
    #
    class GetClientCertificatesRequest < Struct.new(
      :position,
      :limit)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to get information about a Deployment
    # resource.
    #
    # @note When making an API call, you may pass GetDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         deployment_id: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The identifier of the RestApi resource for the Deployment resource
    #   to get information about.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the Deployment resource to get information about.
    #   @return [String]
    #
    class GetDeploymentRequest < Struct.new(
      :rest_api_id,
      :deployment_id)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to get information about a Deployments
    # collection.
    #
    # @note When making an API call, you may pass GetDeploymentsRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         position: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The identifier of the RestApi resource for the collection of
    #   Deployment resources to get information about.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The position of the current Deployment resource in the collection to
    #   get information about.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of Deployment resources in the collection to get
    #   information about. The default limit is 25. It should be an integer
    #   between 1 - 500.
    #   @return [Integer]
    #
    class GetDeploymentsRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit)
      include Aws::Structure
    end

    # Gets a specified documentation part of a given API.
    #
    # @note When making an API call, you may pass GetDocumentationPartRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         documentation_part_id: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   \[Required\] The identifier of an API of the to-be-retrieved
    #   documentation part.
    #   @return [String]
    #
    # @!attribute [rw] documentation_part_id
    #   \[Required\] The identifier of the to-be-retrieved documentation
    #   part.
    #   @return [String]
    #
    class GetDocumentationPartRequest < Struct.new(
      :rest_api_id,
      :documentation_part_id)
      include Aws::Structure
    end

    # Gets the documentation parts of an API. The result may be filtered by
    # the type, name, or path of API entities (targets).
    #
    # @note When making an API call, you may pass GetDocumentationPartsRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         type: "API", # accepts API, AUTHORIZER, MODEL, RESOURCE, METHOD, PATH_PARAMETER, QUERY_PARAMETER, REQUEST_HEADER, REQUEST_BODY, RESPONSE, RESPONSE_HEADER, RESPONSE_BODY
    #         name_query: "String",
    #         path: "String",
    #         position: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   \[Required\] The identifier of the API of the to-be-retrieved
    #   documentation parts.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of API entities of the to-be-retrieved documentation parts.
    #   @return [String]
    #
    # @!attribute [rw] name_query
    #   The name of API entities of the to-be-retrieved documentation parts.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path of API entities of the to-be-retrieved documentation parts.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The position of the to-be-retrieved documentation part in the
    #   DocumentationParts collection.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The size of the paged results.
    #   @return [Integer]
    #
    class GetDocumentationPartsRequest < Struct.new(
      :rest_api_id,
      :type,
      :name_query,
      :path,
      :position,
      :limit)
      include Aws::Structure
    end

    # Gets a documentation snapshot of an API.
    #
    # @note When making an API call, you may pass GetDocumentationVersionRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         documentation_version: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   \[Required\] The identifier of the API of the to-be-retrieved
    #   documentation snapshot.
    #   @return [String]
    #
    # @!attribute [rw] documentation_version
    #   \[Required\] The version identifier of the to-be-retrieved
    #   documentation snapshot.
    #   @return [String]
    #
    class GetDocumentationVersionRequest < Struct.new(
      :rest_api_id,
      :documentation_version)
      include Aws::Structure
    end

    # Gets the documentation versions of an API.
    #
    # @note When making an API call, you may pass GetDocumentationVersionsRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         position: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   \[Required\] The identifier of an API of the to-be-retrieved
    #   documentation versions.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The position of the returned `DocumentationVersion` in the
    #   DocumentationVersions collection.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The page size of the returned documentation versions.
    #   @return [Integer]
    #
    class GetDocumentationVersionsRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit)
      include Aws::Structure
    end

    # Request to get the name of a DomainName resource.
    #
    # @note When making an API call, you may pass GetDomainNameRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the DomainName resource.
    #   @return [String]
    #
    class GetDomainNameRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # Request to describe a collection of DomainName resources.
    #
    # @note When making an API call, you may pass GetDomainNamesRequest
    #   data as a hash:
    #
    #       {
    #         position: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] position
    #   The position of the current domain names to get information about.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of DomainName resources in the collection to get
    #   information about. The default limit is 25. It should be an integer
    #   between 1 - 500.
    #   @return [Integer]
    #
    class GetDomainNamesRequest < Struct.new(
      :position,
      :limit)
      include Aws::Structure
    end

    # Request a new export of a RestApi for a particular Stage.
    #
    # @note When making an API call, you may pass GetExportRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         stage_name: "String", # required
    #         export_type: "String", # required
    #         parameters: {
    #           "String" => "String",
    #         },
    #         accepts: "String",
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The identifier of the RestApi to be exported.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the Stage that will be exported.
    #   @return [String]
    #
    # @!attribute [rw] export_type
    #   The type of export. Currently only 'swagger' is supported.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A key-value map of query string parameters that specify properties
    #   of the export, depending on the requested `exportType`. For
    #   `exportType` `swagger`, any combination of the following parameters
    #   are supported: `integrations` will export the API with
    #   x-amazon-apigateway-integration extensions. `authorizers` will
    #   export the API with x-amazon-apigateway-authorizer extensions.
    #   `postman` will export the API with Postman extensions, allowing for
    #   import to the Postman tool
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] accepts
    #   The content-type of the export, for example `application/json`.
    #   Currently `application/json` and `application/yaml` are supported
    #   for `exportType` of `swagger`. This should be specified in the
    #   `Accept` header for direct API requests.
    #   @return [String]
    #
    class GetExportRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :export_type,
      :parameters,
      :accepts)
      include Aws::Structure
    end

    # Represents a get integration request.
    #
    # @note When making an API call, you may pass GetIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   Specifies a get integration request's API identifier.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a get integration request's resource identifier
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies a get integration request's HTTP method.
    #   @return [String]
    #
    class GetIntegrationRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method)
      include Aws::Structure
    end

    # Represents a get integration response request.
    #
    # @note When making an API call, you may pass GetIntegrationResponseRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #         status_code: "StatusCode", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   Specifies a get integration response request's API identifier.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a get integration response request's resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies a get integration response request's HTTP method.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Specifies a get integration response request's status code.
    #   @return [String]
    #
    class GetIntegrationResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code)
      include Aws::Structure
    end

    # Request to describe an existing Method resource.
    #
    # @note When making an API call, you may pass GetMethodRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies the method request's HTTP method type.
    #   @return [String]
    #
    class GetMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method)
      include Aws::Structure
    end

    # Request to describe a MethodResponse resource.
    #
    # @note When making an API call, you may pass GetMethodResponseRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #         status_code: "StatusCode", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the MethodResponse resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the MethodResponse resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP verb of the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code for the MethodResponse resource.
    #   @return [String]
    #
    class GetMethodResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code)
      include Aws::Structure
    end

    # Request to list information about a model in an existing RestApi
    # resource.
    #
    # @note When making an API call, you may pass GetModelRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         model_name: "String", # required
    #         flatten: false,
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier under which the Model exists.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model as an identifier.
    #   @return [String]
    #
    # @!attribute [rw] flatten
    #   A query parameter of a Boolean value to resolve (`true`) all
    #   external model references and returns a flattened model schema or
    #   not (`false`) The default is `false`.
    #   @return [Boolean]
    #
    class GetModelRequest < Struct.new(
      :rest_api_id,
      :model_name,
      :flatten)
      include Aws::Structure
    end

    # Request to generate a sample mapping template used to transform the
    # payload.
    #
    # @note When making an API call, you may pass GetModelTemplateRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         model_name: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The ID of the RestApi under which the model exists.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model for which to generate a template.
    #   @return [String]
    #
    class GetModelTemplateRequest < Struct.new(
      :rest_api_id,
      :model_name)
      include Aws::Structure
    end

    # Request to list existing Models defined for a RestApi resource.
    #
    # @note When making an API call, you may pass GetModelsRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         position: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The position of the next set of results in the Models resource to
    #   get information about.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of models in the collection to get information
    #   about. The default limit is 25. It should be an integer between 1 -
    #   500.
    #   @return [Integer]
    #
    class GetModelsRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit)
      include Aws::Structure
    end

    # Request to list information about a resource.
    #
    # @note When making an API call, you may pass GetResourceRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier for the Resource resource.
    #   @return [String]
    #
    class GetResourceRequest < Struct.new(
      :rest_api_id,
      :resource_id)
      include Aws::Structure
    end

    # Request to list information about a collection of resources.
    #
    # @note When making an API call, you may pass GetResourcesRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         position: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the Resource.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The position of the next set of results in the current Resources
    #   resource to get information about.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of Resource resources in the collection to get
    #   information about. The default limit is 25. It should be an integer
    #   between 1 - 500.
    #   @return [Integer]
    #
    class GetResourcesRequest < Struct.new(
      :rest_api_id,
      :position,
      :limit)
      include Aws::Structure
    end

    # The GET request to list an existing RestApi defined for your
    # collection.
    #
    # @note When making an API call, you may pass GetRestApiRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The identifier of the RestApi resource.
    #   @return [String]
    #
    class GetRestApiRequest < Struct.new(
      :rest_api_id)
      include Aws::Structure
    end

    # The GET request to list existing RestApis defined for your collection.
    #
    # @note When making an API call, you may pass GetRestApisRequest
    #   data as a hash:
    #
    #       {
    #         position: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] position
    #   The position of the current RestApis resource in the collection to
    #   get information about.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of RestApi resources in the collection to get
    #   information about. The default limit is 25. It should be an integer
    #   between 1 - 500.
    #   @return [Integer]
    #
    class GetRestApisRequest < Struct.new(
      :position,
      :limit)
      include Aws::Structure
    end

    # Request a new generated client SDK for a RestApi and Stage.
    #
    # @note When making an API call, you may pass GetSdkRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         stage_name: "String", # required
    #         sdk_type: "String", # required
    #         parameters: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The identifier of the RestApi that the SDK will use.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the Stage that the SDK will use.
    #   @return [String]
    #
    # @!attribute [rw] sdk_type
    #   The language for the generated SDK. Currently `javascript`,
    #   `android`, and `objectivec` (for iOS) are supported.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A key-value map of query string parameters that specify properties
    #   of the SDK, depending on the requested `sdkType`. For `sdkType` of
    #   `objectivec`, a parameter named `classPrefix` is required. For
    #   `sdkType` of `android`, parameters named `groupId`, `artifactId`,
    #   `artifactVersion`, and `invokerPackage` are required.
    #   @return [Hash<String,String>]
    #
    class GetSdkRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :sdk_type,
      :parameters)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to get information about a Stage resource.
    #
    # @note When making an API call, you may pass GetStageRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         stage_name: "String", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The identifier of the RestApi resource for the Stage resource to get
    #   information about.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the Stage resource to get information about.
    #   @return [String]
    #
    class GetStageRequest < Struct.new(
      :rest_api_id,
      :stage_name)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to get information about one or more Stage
    # resources.
    #
    # @note When making an API call, you may pass GetStagesRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         deployment_id: "String",
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The stages' API identifiers.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The stages' deployment identifiers.
    #   @return [String]
    #
    class GetStagesRequest < Struct.new(
      :rest_api_id,
      :deployment_id)
      include Aws::Structure
    end

    # The GET request to get a usage plan key of a given key identifier.
    #
    # @note When making an API call, you may pass GetUsagePlanKeyRequest
    #   data as a hash:
    #
    #       {
    #         usage_plan_id: "String", # required
    #         key_id: "String", # required
    #       }
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the UsagePlan resource representing the usage plan
    #   containing the to-be-retrieved UsagePlanKey resource representing a
    #   plan customer.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The key Id of the to-be-retrieved UsagePlanKey resource representing
    #   a plan customer.
    #   @return [String]
    #
    class GetUsagePlanKeyRequest < Struct.new(
      :usage_plan_id,
      :key_id)
      include Aws::Structure
    end

    # The GET request to get all the usage plan keys representing the API
    # keys added to a specified usage plan.
    #
    # @note When making an API call, you may pass GetUsagePlanKeysRequest
    #   data as a hash:
    #
    #       {
    #         usage_plan_id: "String", # required
    #         position: "String",
    #         limit: 1,
    #         name_query: "String",
    #       }
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the UsagePlan resource representing the usage plan
    #   containing the to-be-retrieved UsagePlanKey resource representing a
    #   plan customer.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   A query parameter specifying the zero-based index specifying the
    #   position of a usage plan key.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   A query parameter specifying the maximum number usage plan keys
    #   returned by the GET request.
    #   @return [Integer]
    #
    # @!attribute [rw] name_query
    #   A query parameter specifying the name of the to-be-returned usage
    #   plan keys.
    #   @return [String]
    #
    class GetUsagePlanKeysRequest < Struct.new(
      :usage_plan_id,
      :position,
      :limit,
      :name_query)
      include Aws::Structure
    end

    # The GET request to get a usage plan of a given plan identifier.
    #
    # @note When making an API call, you may pass GetUsagePlanRequest
    #   data as a hash:
    #
    #       {
    #         usage_plan_id: "String", # required
    #       }
    #
    # @!attribute [rw] usage_plan_id
    #   The identifier of the UsagePlan resource to be retrieved.
    #   @return [String]
    #
    class GetUsagePlanRequest < Struct.new(
      :usage_plan_id)
      include Aws::Structure
    end

    # The GET request to get all the usage plans of the caller's account.
    #
    # @note When making an API call, you may pass GetUsagePlansRequest
    #   data as a hash:
    #
    #       {
    #         position: "String",
    #         key_id: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] position
    #   The zero-based array index specifying the position of the
    #   to-be-retrieved UsagePlan resource.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The identifier of the API key associated with the usage plans.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The number of UsagePlan resources to be returned as the result.
    #   @return [Integer]
    #
    class GetUsagePlansRequest < Struct.new(
      :position,
      :key_id,
      :limit)
      include Aws::Structure
    end

    # The GET request to get the usage data of a usage plan in a specified
    # time interval.
    #
    # @note When making an API call, you may pass GetUsageRequest
    #   data as a hash:
    #
    #       {
    #         usage_plan_id: "String", # required
    #         key_id: "String",
    #         start_date: "String", # required
    #         end_date: "String", # required
    #         position: "String",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the usage plan associated with the usage data.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The Id of the API key associated with the resultant usage data.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The starting date (e.g., 2016-01-01) of the usage data.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The ending date (e.g., 2016-12-31) of the usage data.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   Position
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to be returned.
    #   @return [Integer]
    #
    class GetUsageRequest < Struct.new(
      :usage_plan_id,
      :key_id,
      :start_date,
      :end_date,
      :position,
      :limit)
      include Aws::Structure
    end

    # The POST request to import API keys from an external source, such as a
    # CSV-formatted file.
    #
    # @note When making an API call, you may pass ImportApiKeysRequest
    #   data as a hash:
    #
    #       {
    #         body: "data", # required
    #         format: "csv", # required, accepts csv
    #         fail_on_warnings: false,
    #       }
    #
    # @!attribute [rw] body
    #   The payload of the POST request to import API keys. For the payload
    #   format, see [API Key File Format][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-key-file-format.html
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A query parameter to specify the input format to imported API keys.
    #   Currently, only the `csv` format is supported.
    #   @return [String]
    #
    # @!attribute [rw] fail_on_warnings
    #   A query parameter to indicate whether to rollback ApiKey importation
    #   (`true`) or not (`false`) when error is encountered.
    #   @return [Boolean]
    #
    class ImportApiKeysRequest < Struct.new(
      :body,
      :format,
      :fail_on_warnings)
      include Aws::Structure
    end

    # Import documentation parts from an external (e.g., Swagger) definition
    # file.
    #
    # @note When making an API call, you may pass ImportDocumentationPartsRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         mode: "merge", # accepts merge, overwrite
    #         fail_on_warnings: false,
    #         body: "data", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   \[Required\] The identifier of an API of the to-be-imported
    #   documentation parts.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   A query parameter to indicate whether to overwrite (`OVERWRITE`) any
    #   existing DocumentationParts definition or to merge (`MERGE`) the new
    #   definition into the existing one. The default value is `MERGE`.
    #   @return [String]
    #
    # @!attribute [rw] fail_on_warnings
    #   A query parameter to specify whether to rollback the documentation
    #   importation (`true`) or not (`false`) when a warning is encountered.
    #   The default value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] body
    #   \[Required\] Raw byte array representing the to-be-imported
    #   documentation parts. To import from a Swagger file, this is a JSON
    #   object.
    #   @return [String]
    #
    class ImportDocumentationPartsRequest < Struct.new(
      :rest_api_id,
      :mode,
      :fail_on_warnings,
      :body)
      include Aws::Structure
    end

    # A POST request to import an API to Amazon API Gateway using an input
    # of an API definition file.
    #
    # @note When making an API call, you may pass ImportRestApiRequest
    #   data as a hash:
    #
    #       {
    #         fail_on_warnings: false,
    #         parameters: {
    #           "String" => "String",
    #         },
    #         body: "data", # required
    #       }
    #
    # @!attribute [rw] fail_on_warnings
    #   A query parameter to indicate whether to rollback the API creation
    #   (`true`) or not (`false`) when a warning is encountered. The default
    #   value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   Custom header parameters as part of the request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] body
    #   The POST request body containing external API definitions.
    #   Currently, only Swagger definition JSON files are supported.
    #   @return [String]
    #
    class ImportRestApiRequest < Struct.new(
      :fail_on_warnings,
      :parameters,
      :body)
      include Aws::Structure
    end

    # Represents an HTTP, HTTP\_PROXY, AWS, AWS\_PROXY, or Mock integration.
    #
    # <div class="remarks">
    # In the API Gateway console, the built-in Lambda integration is an AWS
    # integration.
    # </div>
    #
    # <div class="seeAlso">
    # [Creating an API][1], [][2]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
    # [2]: http://docs.aws.amazon.com/apigateway/latest/developerguide/.html
    #
    # @!attribute [rw] type
    #   Specifies the integration's type. The valid value is `HTTP` for
    #   integrating with an HTTP back end, `AWS` for any AWS service
    #   endpoints, `MOCK` for testing without actually invoking the back
    #   end, `HTTP_PROXY` for integrating with the HTTP proxy integration,
    #   or `AWS_PROXY` for integrating with the Lambda proxy integration
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies the integration's HTTP method type.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   Specifies the integration's Uniform Resource Identifier (URI). For
    #   HTTP integrations, the URI must be a fully formed, encoded HTTP(S)
    #   URL according to the [RFC-3986 specification][1]. For AWS
    #   integrations, the URI should be of the form
    #   `arn:aws:apigateway:\{region\}:\{subdomain.service|service\}:\{path|action\}/\{service_api\}`.
    #   `Region`, `subdomain` and `service` are used to determine the right
    #   endpoint. For AWS services that use the `Action=` query string
    #   parameter, `service_api` should be a valid action for the desired
    #   service. For RESTful AWS service APIs, `path` is used to indicate
    #   that the remaining substring in the URI should be treated as the
    #   path to the resource, including the initial `/`.
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc3986.txt
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   Specifies the credentials required for the integration, if any. For
    #   AWS integrations, three options are available. To specify an IAM
    #   Role for Amazon API Gateway to assume, use the role's Amazon
    #   Resource Name (ARN). To require that the caller's identity be
    #   passed through from the request, specify the string
    #   `arn:aws:iam::*:user/*`. To use resource-based permissions on
    #   supported AWS services, specify null.
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   A key-value map specifying request parameters that are passed from
    #   the method request to the back end. The key is an integration
    #   request parameter name and the associated value is a method request
    #   parameter value or static value that must be enclosed within single
    #   quotes and pre-encoded as required by the back end. The method
    #   request parameter value must match the pattern of
    #   `method.request.\{location\}.\{name\}`, where `location` is
    #   `querystring`, `path`, or `header` and `name` must be a valid and
    #   unique method request parameter name.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_templates
    #   Represents a map of Velocity templates that are applied on the
    #   request payload based on the value of the Content-Type header sent
    #   by the client. The content type value is the key in this map, and
    #   the template (as a String) is the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] passthrough_behavior
    #   <div markdown="1">
    #   Specifies how the method request body of an unmapped content type
    #   will be passed through the integration request to the back end
    #   without transformation. A content type is unmapped if no mapping
    #   template is defined in the integration or the content type does not
    #   match any of the mapped content types, as specified in
    #   `requestTemplates`. There are three valid values: `WHEN_NO_MATCH`,
    #   `WHEN_NO_TEMPLATES`, and `NEVER`.
    #
    #   * `WHEN_NO_MATCH` passes the method request body through the
    #     integration request to the back end without transformation when
    #     the method request content type does not match any content type
    #     associated with the mapping templates defined in the integration
    #     request.
    #   * `WHEN_NO_TEMPLATES` passes the method request body through the
    #     integration request to the back end without transformation when no
    #     mapping template is defined in the integration request. If a
    #     template is defined when this option is selected, the method
    #     request of an unmapped content-type will be rejected with an HTTP
    #     `415 Unsupported Media Type` response.
    #   * `NEVER` rejects the method request with an HTTP `415 Unsupported
    #     Media Type` response when either the method request content type
    #     does not match any content type associated with the mapping
    #     templates defined in the integration request or no mapping
    #     template is defined in the integration request.
    #
    #   </div>
    #   @return [String]
    #
    # @!attribute [rw] content_handling
    #   Specifies how to handle request payload content type conversions.
    #   Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with
    #   the following behaviors:
    #
    #   * `CONVERT_TO_BINARY`\: Converts a request payload from a
    #     Base64-encoded string to the corresponding binary blob.
    #
    #   * `CONVERT_TO_TEXT`\: Converts a request payload from a binary blob
    #     to a Base64-encoded string.
    #
    #   If this property is not defined, the request payload will be passed
    #   through from the method request to integration request without
    #   modification, provided that the `passthroughBehaviors` is configured
    #   to support payload pass-through.
    #   @return [String]
    #
    # @!attribute [rw] cache_namespace
    #   Specifies the integration's cache namespace.
    #   @return [String]
    #
    # @!attribute [rw] cache_key_parameters
    #   Specifies the integration's cache key parameters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] integration_responses
    #   Specifies the integration's responses.
    #
    #   <div class="remarks" markdown="1">
    #
    #
    #   #### Example: Get integration responses of a method
    #
    #   ##### Request
    #
    #
    #
    #       GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160607T191449Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/20160607/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
    #
    #   ##### Response
    #
    #   The successful response returns `200 OK` status and a payload as
    #   follows:
    #
    #       \{ "_links": \{ "curies": \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-\{rel\}.html", "name": "integrationresponse", "templated": true \}, "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "title": "200" \}, "integrationresponse:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" \}, "integrationresponse:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" \} \}, "responseParameters": \{ "method.response.header.Content-Type": "'application/xml'" \}, "responseTemplates": \{ "application/json": "$util.urlDecode("%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E")\n" \}, "statusCode": "200" \}
    #
    #
    #
    #   </div>
    #
    #   <div class="seeAlso">
    #   [Creating an API][1]
    #   </div>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
    #   @return [Hash<String,Types::IntegrationResponse>]
    #
    class Integration < Struct.new(
      :type,
      :http_method,
      :uri,
      :credentials,
      :request_parameters,
      :request_templates,
      :passthrough_behavior,
      :content_handling,
      :cache_namespace,
      :cache_key_parameters,
      :integration_responses)
      include Aws::Structure
    end

    # Represents an integration response. The status code must map to an
    # existing MethodResponse, and parameters and templates can be used to
    # transform the back-end response.
    #
    # <div class="seeAlso">
    # [Creating an API][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
    #
    # @!attribute [rw] status_code
    #   Specifies the status code that is used to map the integration
    #   response to an existing MethodResponse.
    #   @return [String]
    #
    # @!attribute [rw] selection_pattern
    #   Specifies the regular expression (regex) pattern used to choose an
    #   integration response based on the response from the back end. For
    #   example, if the success response returns nothing and the error
    #   response returns some string, you could use the `.+` regex to match
    #   error response. However, make sure that the error response does not
    #   contain any newline (`\n`) character in such cases. If the back end
    #   is an AWS Lambda function, the AWS Lambda function error header is
    #   matched. For all other HTTP and AWS back ends, the HTTP status code
    #   is matched.
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the back end. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   `method.response.header.\{name\}`, where `name` is a valid and
    #   unique header name. The mapped non-static value must match the
    #   pattern of `integration.response.header.\{name\}` or
    #   `integration.response.body.\{JSON-expression\}`, where `name` is a
    #   valid and unique response header name and `JSON-expression` is a
    #   valid JSON expression without the `$` prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   Specifies the templates used to transform the integration response
    #   body. Response templates are represented as a key/value map, with a
    #   content-type as the key and a template as the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] content_handling
    #   Specifies how to handle response payload content type conversions.
    #   Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with
    #   the following behaviors:
    #
    #   * `CONVERT_TO_BINARY`\: Converts a response payload from a
    #     Base64-encoded string to the corresponding binary blob.
    #
    #   * `CONVERT_TO_TEXT`\: Converts a response payload from a binary blob
    #     to a Base64-encoded string.
    #
    #   If this property is not defined, the response payload will be passed
    #   through from the integration response to the method response without
    #   modification.
    #   @return [String]
    #
    class IntegrationResponse < Struct.new(
      :status_code,
      :selection_pattern,
      :response_parameters,
      :response_templates,
      :content_handling)
      include Aws::Structure
    end

    # Represents a client-facing interface by which the client calls the API
    # to access back-end resources. A **Method** resource is integrated with
    # an Integration resource. Both consist of a request and one or more
    # responses. The method request takes the client input that is passed to
    # the back end through the integration request. A method response
    # returns the output from the back end to the client through an
    # integration response. A method request is embodied in a **Method**
    # resource, whereas an integration request is embodied in an Integration
    # resource. On the other hand, a method response is represented by a
    # MethodResponse resource, whereas an integration response is
    # represented by an IntegrationResponse resource.
    #
    # <div class="remarks" markdown="1">
    #
    #
    # #### Example: Retrive the GET method on a specified resource
    #
    # ##### Request
    #
    # The following example request retrieves the information about the GET
    # method on an API resource (`3kzxbg5sa2`) of an API (`fugvjdxtri`).
    #
    #     GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160603T210259Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/20160603/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
    #
    # ##### Response
    #
    # The successful response returns a `200 OK` status code and a payload
    # similar to the following:
    #
    #     \{ "_links": \{ "curies": [ \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-\{rel\}.html", "name": "integration", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-\{rel\}.html", "name": "integrationresponse", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-\{rel\}.html", "name": "method", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-\{rel\}.html", "name": "methodresponse", "templated": true \} ], "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET", "name": "GET", "title": "GET" \}, "integration:put": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "method:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" \}, "method:integration": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "method:responses": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" \}, "method:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" \}, "methodresponse:put": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/\{status_code\}", "templated": true \} \}, "apiKeyRequired": true, "authorizationType": "NONE", "httpMethod": "GET", "_embedded": \{ "method:integration": \{ "_links": \{ "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "integration:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "integration:responses": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" \}, "integration:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "integrationresponse:put": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/\{status_code\}", "templated": true \} \}, "cacheKeyParameters": [], "cacheNamespace": "3kzxbg5sa2", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestParameters": \{ "integration.request.header.Content-Type": "'application/x-amz-json-1.1'" \}, "requestTemplates": \{ "application/json": "\{\n\}" \}, "type": "AWS", "uri": "arn:aws:apigateway:us-east-1:kinesis:action/ListStreams", "_embedded": \{ "integration:responses": \{ "_links": \{ "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" \}, "integrationresponse:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" \}, "integrationresponse:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" \} \}, "responseParameters": \{ "method.response.header.Content-Type": "'application/xml'" \}, "responseTemplates": \{ "application/json": "$util.urlDecode("%3CkinesisStreams%3E%23foreach(%24stream%20in%20%24input.path(%27%24.StreamNames%27))%3Cstream%3E%3Cname%3E%24stream%3C%2Fname%3E%3C%2Fstream%3E%23end%3C%2FkinesisStreams%3E")" \}, "statusCode": "200" \} \} \}, "method:responses": \{ "_links": \{ "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" \}, "methodresponse:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" \}, "methodresponse:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" \} \}, "responseModels": \{ "application/json": "Empty" \}, "responseParameters": \{ "method.response.header.Content-Type": false \}, "statusCode": "200" \} \} \}
    #
    # In the example above, the response template for the `200 OK` response
    # maps the JSON output from the `ListStreams` action in the back end to
    # an XML output. The mapping template is URL-encoded as
    # `%3CkinesisStreams%3E%23foreach(%24stream%20in%20%24input.path(%27%24.StreamNames%27))%3Cstream%3E%3Cname%3E%24stream%3C%2Fname%3E%3C%2Fstream%3E%23end%3C%2FkinesisStreams%3E`
    # and the output is decoded using the [$util.urlDecode()][1] helper
    # function.
    #
    # </div>
    #
    # <div class="seeAlso">
    # MethodResponse, Integration, IntegrationResponse, Resource, [Set up an
    # API's method][2]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#util-templat-reference
    # [2]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-method-settings.html
    #
    # @!attribute [rw] http_method
    #   The method's HTTP verb.
    #   @return [String]
    #
    # @!attribute [rw] authorization_type
    #   The method's authorization type.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of an Authorizer to use on this method. The
    #   `authorizationType` must be `CUSTOM`.
    #   @return [String]
    #
    # @!attribute [rw] api_key_required
    #   A boolean flag specifying whether a valid ApiKey is required to
    #   invoke this method.
    #   @return [Boolean]
    #
    # @!attribute [rw] request_parameters
    #   A key-value map defining required or optional method request
    #   parameters that can be accepted by Amazon API Gateway. A key is a
    #   method request parameter name matching the pattern of
    #   `method.request.\{location\}.\{name\}`, where `location` is
    #   `querystring`, `path`, or `header` and `name` is a valid and unique
    #   parameter name. The value associated with the key is a Boolean flag
    #   indicating whether the parameter is required (`true`) or optional
    #   (`false`). The method request parameter names defined here are
    #   available in Integration to be mapped to integration request
    #   parameters or templates.
    #   @return [Hash<String,Boolean>]
    #
    # @!attribute [rw] request_models
    #   A key-value map specifying data schemas, represented by Model
    #   resources, (as the mapped value) of the request payloads of given
    #   content types (as the mapping key).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] method_responses
    #   Gets a method response associated with a given HTTP status code.
    #
    #   <div class="remarks" markdown="1">
    #   The collection of method responses are encapsulated in a key-value
    #   map, where the key is a response's HTTP status code and the value
    #   is a MethodResponse resource that specifies the response returned to
    #   the caller from the back end through the integration response.
    #
    #   #### Example: Get a 200 OK response of a GET method
    #
    #   ##### Request
    #
    #
    #
    #       GET /restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com Content-Length: 117 X-Amz-Date: 20160613T215008Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
    #
    #   ##### Response
    #
    #   The successful response returns a `200 OK` status code and a payload
    #   similar to the following:
    #
    #       \{ "_links": \{ "curies": \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-\{rel\}.html", "name": "methodresponse", "templated": true \}, "self": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200", "title": "200" \}, "methodresponse:delete": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200" \}, "methodresponse:update": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/responses/200" \} \}, "responseModels": \{ "application/json": "Empty" \}, "responseParameters": \{ "method.response.header.operator": false, "method.response.header.operand_2": false, "method.response.header.operand_1": false \}, "statusCode": "200" \}
    #
    #
    #
    #   </div>
    #
    #   <div class="seeAlso">
    #   [AWS CLI][1]
    #   </div>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-method-response.html
    #   @return [Hash<String,Types::MethodResponse>]
    #
    # @!attribute [rw] method_integration
    #   Gets the method's integration responsible for passing the
    #   client-submitted request to the back end and performing necessary
    #   transformations to make the request compliant with the back end.
    #
    #   <div class="remarks" markdown="1">
    #
    #
    #   #### Example:
    #
    #   ##### Request
    #
    #
    #
    #       GET /restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com Content-Length: 117 X-Amz-Date: 20160613T213210Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/20160613/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
    #
    #   ##### Response
    #
    #   The successful response returns a `200 OK` status code and a payload
    #   similar to the following:
    #
    #       \{ "_links": \{ "curies": [ \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-\{rel\}.html", "name": "integration", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-\{rel\}.html", "name": "integrationresponse", "templated": true \} ], "self": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" \}, "integration:delete": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" \}, "integration:responses": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200", "name": "200", "title": "200" \}, "integration:update": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration" \}, "integrationresponse:put": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/\{status_code\}", "templated": true \} \}, "cacheKeyParameters": [], "cacheNamespace": "0cjtch", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestTemplates": \{ "application/json": "\{\n "a": "$input.params('operand1')",\n "b": "$input.params('operand2')", \n "op": "$input.params('operator')" \n\}" \}, "type": "AWS", "uri": "arn:aws:apigateway:us-west-2:lambda:path//2015-03-31/functions/arn:aws:lambda:us-west-2:123456789012:function:Calc/invocations", "_embedded": \{ "integration:responses": \{ "_links": \{ "self": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200", "name": "200", "title": "200" \}, "integrationresponse:delete": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200" \}, "integrationresponse:update": \{ "href": "/restapis/uojnr9hd57/resources/0cjtch/methods/GET/integration/responses/200" \} \}, "responseParameters": \{ "method.response.header.operator": "integration.response.body.op", "method.response.header.operand_2": "integration.response.body.b", "method.response.header.operand_1": "integration.response.body.a" \}, "responseTemplates": \{ "application/json": "#set($res = $input.path('$'))\n\{\n "result": "$res.a, $res.b, $res.op => $res.c",\n "a" : "$res.a",\n "b" : "$res.b",\n "op" : "$res.op",\n "c" : "$res.c"\n\}" \}, "selectionPattern": "", "statusCode": "200" \} \} \}
    #
    #
    #
    #   </div>
    #
    #   <div class="seeAlso">
    #   [AWS CLI][1]
    #   </div>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-integration.html
    #   @return [Types::Integration]
    #
    class Method < Struct.new(
      :http_method,
      :authorization_type,
      :authorizer_id,
      :api_key_required,
      :request_parameters,
      :request_models,
      :method_responses,
      :method_integration)
      include Aws::Structure
    end

    # Represents a method response of a given HTTP status code returned to
    # the client. The method response is passed from the back end through
    # the associated integration response that can be transformed using a
    # mapping template.
    #
    # <div class="remarks" markdown="1">
    #
    #
    # #### Example: A **MethodResponse** instance of an API
    #
    # ##### Request
    #
    # The example request retrieves a **MethodResponse** of the 200 status
    # code.
    #
    #     GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160603T222952Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/20160603/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
    #
    # ##### Response
    #
    # The successful response returns `200 OK` status and a payload as
    # follows:
    #
    #     \{ "_links": \{ "curies": \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-\{rel\}.html", "name": "methodresponse", "templated": true \}, "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "title": "200" \}, "methodresponse:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" \}, "methodresponse:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" \} \}, "responseModels": \{ "application/json": "Empty" \}, "responseParameters": \{ "method.response.header.Content-Type": false \}, "statusCode": "200" \}
    #
    #
    #
    # </div>
    #
    # <div class="seeAlso">
    # Method, IntegrationResponse, Integration [Creating an API][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
    #
    # @!attribute [rw] status_code
    #   The method response's status code.
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying required or optional response parameters
    #   that Amazon API Gateway can send back to the caller. A key defines a
    #   method response header and the value specifies whether the
    #   associated method response header is required or not. The expression
    #   of the key must match the pattern `method.response.header.\{name\}`,
    #   where `name` is a valid and unique header name. Amazon API Gateway
    #   passes certain integration response data to the method response
    #   headers specified here according to the mapping you prescribe in the
    #   API's IntegrationResponse. The integration response data that can
    #   be mapped include an integration response header expressed in
    #   `integration.response.header.\{name\}`, a static value enclosed
    #   within a pair of single quotes (e.g., `'application/json'`), or a
    #   JSON expression from the back-end response payload in the form of
    #   `integration.response.body.\{JSON-expression\}`, where
    #   `JSON-expression` is a valid JSON expression without the `$`
    #   prefix.)
    #   @return [Hash<String,Boolean>]
    #
    # @!attribute [rw] response_models
    #   Specifies the Model resources used for the response's content-type.
    #   Response models are represented as a key/value map, with a
    #   content-type as the key and a Model name as the value.
    #   @return [Hash<String,String>]
    #
    class MethodResponse < Struct.new(
      :status_code,
      :response_parameters,
      :response_models)
      include Aws::Structure
    end

    # Specifies the method setting properties.
    #
    # @!attribute [rw] metrics_enabled
    #   Specifies whether Amazon CloudWatch metrics are enabled for this
    #   method. The PATCH path for this setting is
    #   `/\{method_setting_key\}/metrics/enabled`, and the value is a
    #   Boolean.
    #   @return [Boolean]
    #
    # @!attribute [rw] logging_level
    #   Specifies the logging level for this method, which effects the log
    #   entries pushed to Amazon CloudWatch Logs. The PATCH path for this
    #   setting is `/\{method_setting_key\}/logging/loglevel`, and the
    #   available levels are `OFF`, `ERROR`, and `INFO`.
    #   @return [String]
    #
    # @!attribute [rw] data_trace_enabled
    #   Specifies whether data trace logging is enabled for this method,
    #   which effects the log entries pushed to Amazon CloudWatch Logs. The
    #   PATCH path for this setting is
    #   `/\{method_setting_key\}/logging/dataTrace`, and the value is a
    #   Boolean.
    #   @return [Boolean]
    #
    # @!attribute [rw] throttling_burst_limit
    #   Specifies the throttling burst limit. The PATCH path for this
    #   setting is `/\{method_setting_key\}/throttling/burstLimit`, and the
    #   value is an integer.
    #   @return [Integer]
    #
    # @!attribute [rw] throttling_rate_limit
    #   Specifies the throttling rate limit. The PATCH path for this setting
    #   is `/\{method_setting_key\}/throttling/rateLimit`, and the value is
    #   a double.
    #   @return [Float]
    #
    # @!attribute [rw] caching_enabled
    #   Specifies whether responses should be cached and returned for
    #   requests. A cache cluster must be enabled on the stage for responses
    #   to be cached. The PATCH path for this setting is
    #   `/\{method_setting_key\}/caching/enabled`, and the value is a
    #   Boolean.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_ttl_in_seconds
    #   Specifies the time to live (TTL), in seconds, for cached responses.
    #   The higher the TTL, the longer the response will be cached. The
    #   PATCH path for this setting is
    #   `/\{method_setting_key\}/caching/ttlInSeconds`, and the value is an
    #   integer.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_data_encrypted
    #   Specifies whether the cached responses are encrypted. The PATCH path
    #   for this setting is `/\{method_setting_key\}/caching/dataEncrypted`,
    #   and the value is a Boolean.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_authorization_for_cache_control
    #   Specifies whether authorization is required for a cache invalidation
    #   request. The PATCH path for this setting is
    #   `/\{method_setting_key\}/caching/requireAuthorizationForCacheControl`,
    #   and the value is a Boolean.
    #   @return [Boolean]
    #
    # @!attribute [rw] unauthorized_cache_control_header_strategy
    #   Specifies how to handle unauthorized requests for cache
    #   invalidation. The PATCH path for this setting is
    #   `/\{method_setting_key\}/caching/unauthorizedCacheControlHeaderStrategy`,
    #   and the available values are `FAIL_WITH_403`,
    #   `SUCCEED_WITH_RESPONSE_HEADER`, `SUCCEED_WITHOUT_RESPONSE_HEADER`.
    #   @return [String]
    #
    class MethodSetting < Struct.new(
      :metrics_enabled,
      :logging_level,
      :data_trace_enabled,
      :throttling_burst_limit,
      :throttling_rate_limit,
      :caching_enabled,
      :cache_ttl_in_seconds,
      :cache_data_encrypted,
      :require_authorization_for_cache_control,
      :unauthorized_cache_control_header_strategy)
      include Aws::Structure
    end

    # Represents a summary of a Method resource, given a particular date and
    # time.
    #
    # @!attribute [rw] authorization_type
    #   Specifies the type of authorization used for the method.
    #   @return [String]
    #
    # @!attribute [rw] api_key_required
    #   Specifies whether the method requires a valid ApiKey.
    #   @return [Boolean]
    #
    class MethodSnapshot < Struct.new(
      :authorization_type,
      :api_key_required)
      include Aws::Structure
    end

    # Represents the data structure of a method's request or response
    # payload.
    #
    # <div class="remarks" markdown="1">
    # A request model defines the data structure of the client-supplied
    # request payload. A response model defines the data structure of the
    # response payload returned by the back end. Although not required,
    # models are useful for mapping payloads between the front end and back
    # end.
    #
    # A model is used for generating an API's SDK, validating the input
    # request body, and creating a skeletal mapping template.
    #
    # </div>
    #
    # <div class="seeAlso">
    # Method, MethodResponse, [Models and Mappings][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html
    #
    # @!attribute [rw] id
    #   The identifier for the model resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the model.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema for the model. For `application/json` models, this should
    #   be [JSON-schema draft v4][1] model. Do not include "\\*/"
    #   characters in the description of any properties because such
    #   "\\*/" characters may be interpreted as the closing marker for
    #   comments in some languages, such as Java or JavaScript, causing the
    #   installation of your API's SDK generated by API Gateway to fail.
    #
    #
    #
    #   [1]: http://json-schema.org/documentation.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content-type for the model.
    #   @return [String]
    #
    class Model < Struct.new(
      :id,
      :name,
      :description,
      :schema,
      :content_type)
      include Aws::Structure
    end

    # Represents a collection of Model resources.
    #
    # <div class="seeAlso">
    # Method, MethodResponse, [Models and Mappings][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Gets the current Model resource in the collection.
    #   @return [Array<Types::Model>]
    #
    class Models < Struct.new(
      :position,
      :items)
      include Aws::Structure
    end

    # A single patch operation to apply to the specified resource. Please
    # refer to http://tools.ietf.org/html/rfc6902#section-4 for an
    # explanation of how each operation is used.
    #
    # @note When making an API call, you may pass PatchOperation
    #   data as a hash:
    #
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       }
    #
    # @!attribute [rw] op
    #   An update operation to be performed with this PATCH request. The
    #   valid value can be "add", "remove", or "replace". Not all
    #   valid operations are supported for a given resource. Support of the
    #   operations depends on specific operational contexts. Attempts to
    #   apply an unsupported operation on a resource will return an error
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The `op` operation's target, as identified by a [JSON Pointer][1]
    #   value that references a location within the targeted resource. For
    #   example, if the target resource has an updateable property of
    #   `\{"name":"value"\}`, the path for this property is `/name`. If the
    #   `name` property value is a JSON object (e.g., `\{"name":
    #   \{"child/name": "child-value"\}\}`), the path for the `child/name`
    #   property will be `/name/child~1name`. Any slash ("/") character
    #   appearing in path names must be escaped with "~1", as shown in the
    #   example above. Each `op` operation can have only one `path`
    #   associated with it.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/draft-ietf-appsawg-json-pointer-08
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The new target value of the update operation.
    #   @return [String]
    #
    # @!attribute [rw] from
    #   Not supported.
    #   @return [String]
    #
    class PatchOperation < Struct.new(
      :op,
      :path,
      :value,
      :from)
      include Aws::Structure
    end

    # Represents a put integration request.
    #
    # @note When making an API call, you may pass PutIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #         type: "HTTP", # required, accepts HTTP, AWS, MOCK, HTTP_PROXY, AWS_PROXY
    #         integration_http_method: "String",
    #         uri: "String",
    #         credentials: "String",
    #         request_parameters: {
    #           "String" => "String",
    #         },
    #         request_templates: {
    #           "String" => "String",
    #         },
    #         passthrough_behavior: "String",
    #         cache_namespace: "String",
    #         cache_key_parameters: ["String"],
    #         content_handling: "CONVERT_TO_BINARY", # accepts CONVERT_TO_BINARY, CONVERT_TO_TEXT
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   Specifies a put integration request's API identifier.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a put integration request's resource ID.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies a put integration request's HTTP method.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies a put integration input's type.
    #   @return [String]
    #
    # @!attribute [rw] integration_http_method
    #   Specifies a put integration HTTP method. When the integration type
    #   is HTTP or AWS, this field is required.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   Specifies a put integration input's Uniform Resource Identifier
    #   (URI). When the integration type is HTTP or AWS, this field is
    #   required. For integration with Lambda as an AWS service proxy, this
    #   value is of the
    #   'arn:aws:apigateway:&lt;region&gt;\:lambda:path/2015-03-31/functions/&lt;functionArn&gt;/invocations'
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   Specifies whether credentials are required for a put integration.
    #   @return [String]
    #
    # @!attribute [rw] request_parameters
    #   A key-value map specifying request parameters that are passed from
    #   the method request to the back end. The key is an integration
    #   request parameter name and the associated value is a method request
    #   parameter value or static value that must be enclosed within single
    #   quotes and pre-encoded as required by the back end. The method
    #   request parameter value must match the pattern of
    #   `method.request.\{location\}.\{name\}`, where `location` is
    #   `querystring`, `path`, or `header` and `name` must be a valid and
    #   unique method request parameter name.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_templates
    #   Represents a map of Velocity templates that are applied on the
    #   request payload based on the value of the Content-Type header sent
    #   by the client. The content type value is the key in this map, and
    #   the template (as a String) is the value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] passthrough_behavior
    #   Specifies the pass-through behavior for incoming requests based on
    #   the Content-Type header in the request, and the available mapping
    #   templates specified as the `requestTemplates` property on the
    #   Integration resource. There are three valid values: `WHEN_NO_MATCH`,
    #   `WHEN_NO_TEMPLATES`, and `NEVER`.
    #
    #   * `WHEN_NO_MATCH` passes the request body for unmapped content types
    #     through to the integration back end without transformation.
    #
    #   * `NEVER` rejects unmapped content types with an HTTP 415
    #     'Unsupported Media Type' response.
    #
    #   * `WHEN_NO_TEMPLATES` allows pass-through when the integration has
    #     NO content types mapped to templates. However if there is at least
    #     one content type defined, unmapped content types will be rejected
    #     with the same 415 response.
    #   @return [String]
    #
    # @!attribute [rw] cache_namespace
    #   Specifies a put integration input's cache namespace.
    #   @return [String]
    #
    # @!attribute [rw] cache_key_parameters
    #   Specifies a put integration input's cache key parameters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] content_handling
    #   Specifies how to handle request payload content type conversions.
    #   Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with
    #   the following behaviors:
    #
    #   * `CONVERT_TO_BINARY`\: Converts a request payload from a
    #     Base64-encoded string to the corresponding binary blob.
    #
    #   * `CONVERT_TO_TEXT`\: Converts a request payload from a binary blob
    #     to a Base64-encoded string.
    #
    #   If this property is not defined, the request payload will be passed
    #   through from the method request to integration request without
    #   modification, provided that the `passthroughBehaviors` is configured
    #   to support payload pass-through.
    #   @return [String]
    #
    class PutIntegrationRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :type,
      :integration_http_method,
      :uri,
      :credentials,
      :request_parameters,
      :request_templates,
      :passthrough_behavior,
      :cache_namespace,
      :cache_key_parameters,
      :content_handling)
      include Aws::Structure
    end

    # Represents a put integration response request.
    #
    # @note When making an API call, you may pass PutIntegrationResponseRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #         status_code: "StatusCode", # required
    #         selection_pattern: "String",
    #         response_parameters: {
    #           "String" => "String",
    #         },
    #         response_templates: {
    #           "String" => "String",
    #         },
    #         content_handling: "CONVERT_TO_BINARY", # accepts CONVERT_TO_BINARY, CONVERT_TO_TEXT
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   Specifies a put integration response request's API identifier.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a put integration response request's resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies a put integration response request's HTTP method.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Specifies the status code that is used to map the integration
    #   response to an existing MethodResponse.
    #   @return [String]
    #
    # @!attribute [rw] selection_pattern
    #   Specifies the selection pattern of a put integration response.
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying response parameters that are passed to
    #   the method response from the back end. The key is a method response
    #   header parameter name and the mapped value is an integration
    #   response header value, a static value enclosed within a pair of
    #   single quotes, or a JSON expression from the integration response
    #   body. The mapping key must match the pattern of
    #   `method.response.header.\{name\}`, where `name` is a valid and
    #   unique header name. The mapped non-static value must match the
    #   pattern of `integration.response.header.\{name\}` or
    #   `integration.response.body.\{JSON-expression\}`, where `name` must
    #   be a valid and unique response header name and `JSON-expression` a
    #   valid JSON expression without the `$` prefix.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_templates
    #   Specifies a put integration response's templates.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] content_handling
    #   Specifies how to handle response payload content type conversions.
    #   Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with
    #   the following behaviors:
    #
    #   * `CONVERT_TO_BINARY`\: Converts a response payload from a
    #     Base64-encoded string to the corresponding binary blob.
    #
    #   * `CONVERT_TO_TEXT`\: Converts a response payload from a binary blob
    #     to a Base64-encoded string.
    #
    #   If this property is not defined, the response payload will be passed
    #   through from the integration response to the method response without
    #   modification.
    #   @return [String]
    #
    class PutIntegrationResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      :selection_pattern,
      :response_parameters,
      :response_templates,
      :content_handling)
      include Aws::Structure
    end

    # Request to add a method to an existing Resource resource.
    #
    # @note When making an API call, you may pass PutMethodRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #         authorization_type: "String", # required
    #         authorizer_id: "String",
    #         api_key_required: false,
    #         request_parameters: {
    #           "String" => false,
    #         },
    #         request_models: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the new Method resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the new Method resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies the method request's HTTP method type.
    #   @return [String]
    #
    # @!attribute [rw] authorization_type
    #   Specifies the type of authorization used for the method.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   Specifies the identifier of an Authorizer to use on this Method, if
    #   the type is CUSTOM.
    #   @return [String]
    #
    # @!attribute [rw] api_key_required
    #   Specifies whether the method required a valid ApiKey.
    #   @return [Boolean]
    #
    # @!attribute [rw] request_parameters
    #   A key-value map defining required or optional method request
    #   parameters that can be accepted by Amazon API Gateway. A key defines
    #   a method request parameter name matching the pattern of
    #   `method.request.\{location\}.\{name\}`, where `location` is
    #   `querystring`, `path`, or `header` and `name` is a valid and unique
    #   parameter name. The value associated with the key is a Boolean flag
    #   indicating whether the parameter is required (`true`) or optional
    #   (`false`). The method request parameter names defined here are
    #   available in Integration to be mapped to integration request
    #   parameters or body-mapping templates.
    #   @return [Hash<String,Boolean>]
    #
    # @!attribute [rw] request_models
    #   Specifies the Model resources used for the request's content type.
    #   Request models are represented as a key/value map, with a content
    #   type as the key and a Model name as the value.
    #   @return [Hash<String,String>]
    #
    class PutMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :authorization_type,
      :authorizer_id,
      :api_key_required,
      :request_parameters,
      :request_models)
      include Aws::Structure
    end

    # Request to add a MethodResponse to an existing Method resource.
    #
    # @note When making an API call, you may pass PutMethodResponseRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #         status_code: "StatusCode", # required
    #         response_parameters: {
    #           "String" => false,
    #         },
    #         response_models: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP verb of the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The method response's status code.
    #   @return [String]
    #
    # @!attribute [rw] response_parameters
    #   A key-value map specifying required or optional response parameters
    #   that Amazon API Gateway can send back to the caller. A key defines a
    #   method response header name and the associated value is a Boolean
    #   flag indicating whether the method response parameter is required or
    #   not. The method response header names must match the pattern of
    #   `method.response.header.\{name\}`, where `name` is a valid and
    #   unique header name. The response parameter names defined here are
    #   available in the integration response to be mapped from an
    #   integration response header expressed in
    #   `integration.response.header.\{name\}`, a static value enclosed
    #   within a pair of single quotes (e.g., `'application/json'`), or a
    #   JSON expression from the back-end response payload in the form of
    #   `integration.response.body.\{JSON-expression\}`, where
    #   `JSON-expression` is a valid JSON expression without the `$`
    #   prefix.)
    #   @return [Hash<String,Boolean>]
    #
    # @!attribute [rw] response_models
    #   Specifies the Model resources used for the response's content type.
    #   Response models are represented as a key/value map, with a content
    #   type as the key and a Model name as the value.
    #   @return [Hash<String,String>]
    #
    class PutMethodResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      :response_parameters,
      :response_models)
      include Aws::Structure
    end

    # A PUT request to update an existing API, with external API definitions
    # specified as the request body.
    #
    # @note When making an API call, you may pass PutRestApiRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         mode: "merge", # accepts merge, overwrite
    #         fail_on_warnings: false,
    #         parameters: {
    #           "String" => "String",
    #         },
    #         body: "data", # required
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The identifier of the RestApi to be updated.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The `mode` query parameter to specify the update mode. Valid values
    #   are "merge" and "overwrite". By default, the update mode is
    #   "merge".
    #   @return [String]
    #
    # @!attribute [rw] fail_on_warnings
    #   A query parameter to indicate whether to rollback the API update
    #   (`true`) or not (`false`) when a warning is encountered. The default
    #   value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   Custom headers supplied as part of the request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] body
    #   The PUT request body containing external API definitions. Currently,
    #   only Swagger definition JSON files are supported.
    #   @return [String]
    #
    class PutRestApiRequest < Struct.new(
      :rest_api_id,
      :mode,
      :fail_on_warnings,
      :parameters,
      :body)
      include Aws::Structure
    end

    # Quotas configured for a usage plan.
    #
    # @note When making an API call, you may pass QuotaSettings
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         offset: 1,
    #         period: "DAY", # accepts DAY, WEEK, MONTH
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of requests that can be made in a given time
    #   period.
    #   @return [Integer]
    #
    # @!attribute [rw] offset
    #   The number of requests subtracted from the given limit in the
    #   initial time period.
    #   @return [Integer]
    #
    # @!attribute [rw] period
    #   The time period in which the limit applies. Valid values are
    #   "DAY", "WEEK" or "MONTH".
    #   @return [String]
    #
    class QuotaSettings < Struct.new(
      :limit,
      :offset,
      :period)
      include Aws::Structure
    end

    # Represents an API resource.
    #
    # <div class="seeAlso">
    # [Create an API][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
    #
    # @!attribute [rw] id
    #   The resource's identifier.
    #   @return [String]
    #
    # @!attribute [rw] parent_id
    #   The parent resource's identifier.
    #   @return [String]
    #
    # @!attribute [rw] path_part
    #   The last path segment for this resource.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The full path for this resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_methods
    #   Gets an API resource's method of a given HTTP verb.
    #
    #   <div class="remarks" markdown="1">
    #   The resource methods are a map of methods indexed by methods' HTTP
    #   verbs enabled on the resource. This method map is included in the
    #   `200 OK` response of the `GET
    #   /restapis/\{restapi_id\}/resources/\{resource_id\}` or `GET
    #   /restapis/\{restapi_id\}/resources/\{resource_id\}?embed=methods`
    #   request.
    #
    #   #### Example: Get the GET method of an API resource
    #
    #   ##### Request
    #
    #       GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160608T031827Z Authorization: AWS4-HMAC-SHA256 Credential=\{access_key_ID\}/20160608/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=\{sig4_hash\}
    #
    #   ##### Response
    #
    #       \{ "_links": \{ "curies": [ \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-\{rel\}.html", "name": "integration", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-\{rel\}.html", "name": "integrationresponse", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-\{rel\}.html", "name": "method", "templated": true \}, \{ "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-method-response-\{rel\}.html", "name": "methodresponse", "templated": true \} ], "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET", "name": "GET", "title": "GET" \}, "integration:put": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "method:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" \}, "method:integration": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "method:responses": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" \}, "method:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET" \}, "methodresponse:put": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/\{status_code\}", "templated": true \} \}, "apiKeyRequired": false, "authorizationType": "NONE", "httpMethod": "GET", "_embedded": \{ "method:integration": \{ "_links": \{ "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "integration:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "integration:responses": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" \}, "integration:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration" \}, "integrationresponse:put": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/\{status_code\}", "templated": true \} \}, "cacheKeyParameters": [], "cacheNamespace": "3kzxbg5sa2", "credentials": "arn:aws:iam::123456789012:role/apigAwsProxyRole", "httpMethod": "POST", "passthroughBehavior": "WHEN_NO_MATCH", "requestParameters": \{ "integration.request.header.Content-Type": "'application/x-amz-json-1.1'" \}, "requestTemplates": \{ "application/json": "\{\n\}" \}, "type": "AWS", "uri": "arn:aws:apigateway:us-east-1:kinesis:action/ListStreams", "_embedded": \{ "integration:responses": \{ "_links": \{ "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "name": "200", "title": "200" \}, "integrationresponse:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" \}, "integrationresponse:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" \} \}, "responseParameters": \{ "method.response.header.Content-Type": "'application/xml'" \}, "responseTemplates": \{ "application/json": "$util.urlDecode("%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E")\n" \}, "statusCode": "200" \} \} \}, "method:responses": \{ "_links": \{ "self": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200", "name": "200", "title": "200" \}, "methodresponse:delete": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" \}, "methodresponse:update": \{ "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/responses/200" \} \}, "responseModels": \{ "application/json": "Empty" \}, "responseParameters": \{ "method.response.header.Content-Type": false \}, "statusCode": "200" \} \} \}
    #
    #   If the `OPTIONS` is enabled on the resource, you can follow the
    #   example here to get that method. Just replace the `GET` of the last
    #   path segment in the request URL with `OPTIONS`.
    #
    #   </div>
    #
    #   <div class="seeAlso"></div>
    #   @return [Hash<String,Types::Method>]
    #
    class Resource < Struct.new(
      :id,
      :parent_id,
      :path_part,
      :path,
      :resource_methods)
      include Aws::Structure
    end

    # Represents a collection of Resource resources.
    #
    # <div class="seeAlso">
    # [Create an API][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Gets the current Resource resource in the collection.
    #   @return [Array<Types::Resource>]
    #
    class Resources < Struct.new(
      :position,
      :items)
      include Aws::Structure
    end

    # Represents a REST API.
    #
    # <div class="seeAlso">
    # [Create an API][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
    #
    # @!attribute [rw] id
    #   The API's identifier. This identifier is unique across all of your
    #   APIs in Amazon API Gateway.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The API's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The API's description.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the API was created, in [ISO 8601 format][1].
    #
    #
    #
    #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   A version identifier for the API.
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   The warning messages reported when `failonwarnings` is turned on
    #   during API import.
    #   @return [Array<String>]
    #
    # @!attribute [rw] binary_media_types
    #   The list of binary media types supported by the RestApi. By default,
    #   the RestApi supports only UTF-8-encoded text payloads.
    #   @return [Array<String>]
    #
    class RestApi < Struct.new(
      :id,
      :name,
      :description,
      :created_date,
      :version,
      :warnings,
      :binary_media_types)
      include Aws::Structure
    end

    # Contains references to your APIs and links that guide you in how to
    # interact with your collection. A collection offers a paginated view of
    # your APIs.
    #
    # <div class="seeAlso">
    # [Create an API][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   An array of links to the current page of RestApi resources.
    #   @return [Array<Types::RestApi>]
    #
    class RestApis < Struct.new(
      :position,
      :items)
      include Aws::Structure
    end

    # The binary blob response to GetSdk, which contains the generated SDK.
    #
    # @!attribute [rw] content_type
    #   The content-type header value in the HTTP response.
    #   @return [String]
    #
    # @!attribute [rw] content_disposition
    #   The content-disposition header value in the HTTP response.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The binary blob response to GetSdk, which contains the generated
    #   SDK.
    #   @return [String]
    #
    class SdkResponse < Struct.new(
      :content_type,
      :content_disposition,
      :body)
      include Aws::Structure
    end

    # Represents a unique identifier for a version of a deployed RestApi
    # that is callable by users.
    #
    # <div class="seeAlso">
    # [Deploy an API][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the Deployment that the stage points to.
    #   @return [String]
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of a client certificate for an API stage.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage is the first path segment in the Uniform
    #   Resource Identifier (URI) of a call to Amazon API Gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The stage's description.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_enabled
    #   Specifies whether a cache cluster is enabled for the stage.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_cluster_size
    #   The size of the cache cluster for the stage, if enabled.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_status
    #   The status of the cache cluster for the stage, if enabled.
    #   @return [String]
    #
    # @!attribute [rw] method_settings
    #   A map that defines the method settings for a Stage resource. Keys
    #   (designated as `/\{method_setting_key` below) are method paths
    #   defined as `\{resource_path\}/\{http_method\}` for an individual
    #   method override, or `/*/*` for overriding all methods in the
    #   stage.
    #   @return [Hash<String,Types::MethodSetting>]
    #
    # @!attribute [rw] variables
    #   A map that defines the stage variables for a Stage resource.
    #   Variable names can have alphanumeric and underscore characters, and
    #   the values must match `[A-Za-z0-9-._~:/?#&=,]+`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] documentation_version
    #   The version of the associated API documentation.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date and time that the stage was created, in [ISO 8601
    #   format][1].
    #
    #
    #
    #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date
    #   The date and time that information about the stage was last updated,
    #   in [ISO 8601 format][1].
    #
    #
    #
    #   [1]: http://www.iso.org/iso/home/standards/iso8601.htm
    #   @return [Time]
    #
    class Stage < Struct.new(
      :deployment_id,
      :client_certificate_id,
      :stage_name,
      :description,
      :cache_cluster_enabled,
      :cache_cluster_size,
      :cache_cluster_status,
      :method_settings,
      :variables,
      :documentation_version,
      :created_date,
      :last_updated_date)
      include Aws::Structure
    end

    # A reference to a unique stage identified in the format
    # `\{restApiId\}/\{stage\}`.
    #
    # @note When making an API call, you may pass StageKey
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String",
    #         stage_name: "String",
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   A list of Stage resources that are associated with the ApiKey
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The stage name in the RestApi that the stage key references.
    #   @return [String]
    #
    class StageKey < Struct.new(
      :rest_api_id,
      :stage_name)
      include Aws::Structure
    end

    # A list of Stage resources that are associated with the ApiKey
    # resource.
    #
    # <div class="seeAlso">
    # [Deploying API in Stages][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/stages.html
    #
    # @!attribute [rw] item
    #   An individual Stage resource.
    #   @return [Array<Types::Stage>]
    #
    class Stages < Struct.new(
      :item)
      include Aws::Structure
    end

    # Represents a mapping template used to transform a payload.
    #
    # <div class="seeAlso">
    # [Mapping Templates][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html#models-mappings-mappings
    #
    # @!attribute [rw] value
    #   The Apache [Velocity Template Language (VTL)][1] template content
    #   used for the template resource.
    #
    #
    #
    #   [1]: http://velocity.apache.org/engine/devel/vtl-reference-guide.html
    #   @return [String]
    #
    class Template < Struct.new(
      :value)
      include Aws::Structure
    end

    # Make a request to simulate the execution of an Authorizer.
    #
    # @note When making an API call, you may pass TestInvokeAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         authorizer_id: "String", # required
    #         headers: {
    #           "String" => "String",
    #         },
    #         path_with_query_string: "String",
    #         body: "String",
    #         stage_variables: {
    #           "String" => "String",
    #         },
    #         additional_context: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   Specifies a test invoke authorizer request's RestApi identifier.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   Specifies a test invoke authorizer request's Authorizer ID.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   \[Required\] A key-value map of headers to simulate an incoming
    #   invocation request. This is where the incoming authorization token,
    #   or identity source, should be specified.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] path_with_query_string
    #   \[Optional\] The URI path, including query string, of the simulated
    #   invocation request. Use this to specify path parameters and query
    #   string parameters.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   \[Optional\] The simulated request body of an incoming invocation
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   A key-value map of stage variables to simulate an invocation on a
    #   deployed Stage.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] additional_context
    #   \[Optional\] A key-value map of additional context variables.
    #   @return [Hash<String,String>]
    #
    class TestInvokeAuthorizerRequest < Struct.new(
      :rest_api_id,
      :authorizer_id,
      :headers,
      :path_with_query_string,
      :body,
      :stage_variables,
      :additional_context)
      include Aws::Structure
    end

    # Represents the response of the test invoke request for a custom
    # Authorizer
    #
    # @!attribute [rw] client_status
    #   The HTTP status code that the client would have received. Value is 0
    #   if the authorizer succeeded.
    #   @return [Integer]
    #
    # @!attribute [rw] log
    #   The Amazon API Gateway execution log for the test authorizer
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] latency
    #   The execution latency of the test authorizer request.
    #   @return [Integer]
    #
    # @!attribute [rw] principal_id
    #   The principal identity returned by the Authorizer
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON policy document returned by the Authorizer
    #   @return [String]
    #
    # @!attribute [rw] authorization
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] claims
    #   The [open identity claims][1], with any supported custom attributes,
    #   returned from the Cognito Your User Pool configured for the API.
    #
    #
    #
    #   [1]: http://openid.net/specs/openid-connect-core-1_0.html#StandardClaims
    #   @return [Hash<String,String>]
    #
    class TestInvokeAuthorizerResponse < Struct.new(
      :client_status,
      :log,
      :latency,
      :principal_id,
      :policy,
      :authorization,
      :claims)
      include Aws::Structure
    end

    # Make a request to simulate the execution of a Method.
    #
    # @note When making an API call, you may pass TestInvokeMethodRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #         path_with_query_string: "String",
    #         body: "String",
    #         headers: {
    #           "String" => "String",
    #         },
    #         client_certificate_id: "String",
    #         stage_variables: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   Specifies a test invoke method request's API identifier.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies a test invoke method request's resource ID.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies a test invoke method request's HTTP method.
    #   @return [String]
    #
    # @!attribute [rw] path_with_query_string
    #   The URI path, including query string, of the simulated invocation
    #   request. Use this to specify path parameters and query string
    #   parameters.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The simulated request body of an incoming invocation request.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   A key-value map of headers to simulate an incoming invocation
    #   request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_certificate_id
    #   A ClientCertificate identifier to use in the test invocation. API
    #   Gateway will use the certificate when making the HTTPS request to
    #   the defined back-end endpoint.
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   A key-value map of stage variables to simulate an invocation on a
    #   deployed Stage.
    #   @return [Hash<String,String>]
    #
    class TestInvokeMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :path_with_query_string,
      :body,
      :headers,
      :client_certificate_id,
      :stage_variables)
      include Aws::Structure
    end

    # Represents the response of the test invoke request in the HTTP method.
    #
    # <div class="seeAlso">
    # [Test API using the API Gateway console][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-test-method.html#how-to-test-method-console
    #
    # @!attribute [rw] status
    #   The HTTP status code.
    #   @return [Integer]
    #
    # @!attribute [rw] body
    #   The body of the HTTP response.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   The headers of the HTTP response.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log
    #   The Amazon API Gateway execution log for the test invoke request.
    #   @return [String]
    #
    # @!attribute [rw] latency
    #   The execution latency of the test invoke request.
    #   @return [Integer]
    #
    class TestInvokeMethodResponse < Struct.new(
      :status,
      :body,
      :headers,
      :log,
      :latency)
      include Aws::Structure
    end

    # The API request rate limits.
    #
    # @note When making an API call, you may pass ThrottleSettings
    #   data as a hash:
    #
    #       {
    #         burst_limit: 1,
    #         rate_limit: 1.0,
    #       }
    #
    # @!attribute [rw] burst_limit
    #   The API request burst limit, the maximum rate limit over a time
    #   ranging from one to a few seconds, depending upon whether the
    #   underlying token bucket is at its full capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] rate_limit
    #   The API request steady-state rate limit.
    #   @return [Float]
    #
    class ThrottleSettings < Struct.new(
      :burst_limit,
      :rate_limit)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to change information about the current
    # Account resource.
    #
    # @note When making an API call, you may pass UpdateAccountRequest
    #   data as a hash:
    #
    #       {
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateAccountRequest < Struct.new(
      :patch_operations)
      include Aws::Structure
    end

    # A request to change information about an ApiKey resource.
    #
    # @note When making an API call, you may pass UpdateApiKeyRequest
    #   data as a hash:
    #
    #       {
    #         api_key: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] api_key
    #   The identifier of the ApiKey resource to be updated.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateApiKeyRequest < Struct.new(
      :api_key,
      :patch_operations)
      include Aws::Structure
    end

    # Request to update an existing Authorizer resource.
    #
    # @note When making an API call, you may pass UpdateAuthorizerRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         authorizer_id: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the Authorizer resource.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_id
    #   The identifier of the Authorizer resource.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateAuthorizerRequest < Struct.new(
      :rest_api_id,
      :authorizer_id,
      :patch_operations)
      include Aws::Structure
    end

    # A request to change information about the BasePathMapping resource.
    #
    # @note When making an API call, you may pass UpdateBasePathMappingRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #         base_path: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain name of the BasePathMapping resource to change.
    #   @return [String]
    #
    # @!attribute [rw] base_path
    #   The base path of the BasePathMapping resource to change.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateBasePathMappingRequest < Struct.new(
      :domain_name,
      :base_path,
      :patch_operations)
      include Aws::Structure
    end

    # A request to change information about an ClientCertificate resource.
    #
    # @note When making an API call, you may pass UpdateClientCertificateRequest
    #   data as a hash:
    #
    #       {
    #         client_certificate_id: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of the ClientCertificate resource to be updated.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateClientCertificateRequest < Struct.new(
      :client_certificate_id,
      :patch_operations)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to change information about a Deployment
    # resource.
    #
    # @note When making an API call, you may pass UpdateDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         deployment_id: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The replacement identifier of the RestApi resource for the
    #   Deployment resource to change information about.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The replacement identifier for the Deployment resource to change
    #   information about.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateDeploymentRequest < Struct.new(
      :rest_api_id,
      :deployment_id,
      :patch_operations)
      include Aws::Structure
    end

    # Updates an existing documentation part of a given API.
    #
    # @note When making an API call, you may pass UpdateDocumentationPartRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         documentation_part_id: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   \[Required\] The identifier of an API of the to-be-updated
    #   documentation part.
    #   @return [String]
    #
    # @!attribute [rw] documentation_part_id
    #   \[Required\] The identifier of the to-be-updated documentation part.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateDocumentationPartRequest < Struct.new(
      :rest_api_id,
      :documentation_part_id,
      :patch_operations)
      include Aws::Structure
    end

    # Updates an existing documentation version of an API.
    #
    # @note When making an API call, you may pass UpdateDocumentationVersionRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         documentation_version: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   \[Required\] The identifier of an API of the to-be-updated
    #   documentation version.
    #   @return [String]
    #
    # @!attribute [rw] documentation_version
    #   \[Required\] The version identifier of the to-be-updated
    #   documentation version.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateDocumentationVersionRequest < Struct.new(
      :rest_api_id,
      :documentation_version,
      :patch_operations)
      include Aws::Structure
    end

    # A request to change information about the DomainName resource.
    #
    # @note When making an API call, you may pass UpdateDomainNameRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the DomainName resource to be changed.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateDomainNameRequest < Struct.new(
      :domain_name,
      :patch_operations)
      include Aws::Structure
    end

    # Represents an update integration request.
    #
    # @note When making an API call, you may pass UpdateIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   Represents an update integration request's API identifier.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Represents an update integration request's resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Represents an update integration request's HTTP method.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateIntegrationRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :patch_operations)
      include Aws::Structure
    end

    # Represents an update integration response request.
    #
    # @note When making an API call, you may pass UpdateIntegrationResponseRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #         status_code: "StatusCode", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   Specifies an update integration response request's API identifier.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Specifies an update integration response request's resource
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   Specifies an update integration response request's HTTP method.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Specifies an update integration response request's status code.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateIntegrationResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      :patch_operations)
      include Aws::Structure
    end

    # Request to update an existing Method resource.
    #
    # @note When making an API call, you may pass UpdateMethodRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP verb of the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateMethodRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :patch_operations)
      include Aws::Structure
    end

    # A request to update an existing MethodResponse resource.
    #
    # @note When making an API call, you may pass UpdateMethodResponseRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         http_method: "String", # required
    #         status_code: "StatusCode", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the MethodResponse resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The Resource identifier for the MethodResponse resource.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP verb of the Method resource.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code for the MethodResponse resource.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateMethodResponseRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :http_method,
      :status_code,
      :patch_operations)
      include Aws::Structure
    end

    # Request to update an existing model in an existing RestApi resource.
    #
    # @note When making an API call, you may pass UpdateModelRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         model_name: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier under which the model exists.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model to update.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateModelRequest < Struct.new(
      :rest_api_id,
      :model_name,
      :patch_operations)
      include Aws::Structure
    end

    # Request to change information about a Resource resource.
    #
    # @note When making an API call, you may pass UpdateResourceRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         resource_id: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The RestApi identifier for the Resource resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the Resource resource.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateResourceRequest < Struct.new(
      :rest_api_id,
      :resource_id,
      :patch_operations)
      include Aws::Structure
    end

    # Request to update an existing RestApi resource in your collection.
    #
    # @note When making an API call, you may pass UpdateRestApiRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The ID of the RestApi you want to update.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateRestApiRequest < Struct.new(
      :rest_api_id,
      :patch_operations)
      include Aws::Structure
    end

    # Requests Amazon API Gateway to change information about a Stage
    # resource.
    #
    # @note When making an API call, you may pass UpdateStageRequest
    #   data as a hash:
    #
    #       {
    #         rest_api_id: "String", # required
    #         stage_name: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rest_api_id
    #   The identifier of the RestApi resource for the Stage resource to
    #   change information about.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the Stage resource to change information about.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateStageRequest < Struct.new(
      :rest_api_id,
      :stage_name,
      :patch_operations)
      include Aws::Structure
    end

    # The PATCH request to update a usage plan of a given plan Id.
    #
    # @note When making an API call, you may pass UpdateUsagePlanRequest
    #   data as a hash:
    #
    #       {
    #         usage_plan_id: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the to-be-updated usage plan.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateUsagePlanRequest < Struct.new(
      :usage_plan_id,
      :patch_operations)
      include Aws::Structure
    end

    # The PATCH request to grant a temporary extension to the reamining
    # quota of a usage plan associated with a specified API key.
    #
    # @note When making an API call, you may pass UpdateUsageRequest
    #   data as a hash:
    #
    #       {
    #         usage_plan_id: "String", # required
    #         key_id: "String", # required
    #         patch_operations: [
    #           {
    #             op: "add", # accepts add, remove, replace, move, copy, test
    #             path: "String",
    #             value: "String",
    #             from: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] usage_plan_id
    #   The Id of the usage plan associated with the usage data.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The identifier of the API key associated with the usage plan in
    #   which a temporary extension is granted to the remaining quota.
    #   @return [String]
    #
    # @!attribute [rw] patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #   @return [Array<Types::PatchOperation>]
    #
    class UpdateUsageRequest < Struct.new(
      :usage_plan_id,
      :key_id,
      :patch_operations)
      include Aws::Structure
    end

    # Represents the usage data of a usage plan.
    #
    # <div class="remarks"></div>
    #
    # <div class="seeAlso">
    # [Create and Use Usage Plans][1], [Manage Usage in a Usage Plan][2]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html
    # [2]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-create-usage-plans-with-console.html#api-gateway-usage-plan-manage-usage
    #
    # @!attribute [rw] usage_plan_id
    #   The plan Id associated with this usage data.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The starting date of the usage data.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The ending date of the usage data.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The usage data, as daily logs of used and remaining quotas, over the
    #   specified time interval indexed over the API keys in a usage plan.
    #   For example, `\{..., "values" : \{ "\{api_key\}" : [ [0, 100], [10,
    #   90], [100, 10]]\}`, where `\{api_key\}` stands for an API key value
    #   and the daily log entry is of the format `[used quota, remaining
    #   quota]`.
    #   @return [Hash<String,Array<Array<Integer>>>]
    #
    class Usage < Struct.new(
      :usage_plan_id,
      :start_date,
      :end_date,
      :position,
      :items)
      include Aws::Structure
    end

    # Represents a usage plan than can specify who can assess associated API
    # stages with specified request limits and quotas.
    #
    # <div class="remarks" markdown="1">
    # In a usage plan, you associate an API by specifying the API's Id and
    # a stage name of the specified API. You add plan customers by adding
    # API keys to the plan.
    #
    # </div>
    #
    # <div class="seeAlso">
    # [Create and Use Usage Plans][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html
    #
    # @!attribute [rw] id
    #   The identifier of a UsagePlan resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a usage plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a usage plan.
    #   @return [String]
    #
    # @!attribute [rw] api_stages
    #   The associated API stages of a usage plan.
    #   @return [Array<Types::ApiStage>]
    #
    # @!attribute [rw] throttle
    #   The request throttle limits of a usage plan.
    #   @return [Types::ThrottleSettings]
    #
    # @!attribute [rw] quota
    #   The maximum number of permitted requests per a given unit time
    #   interval.
    #   @return [Types::QuotaSettings]
    #
    # @!attribute [rw] product_code
    #   The AWS Markeplace product identifier to associate with the usage
    #   plan as a SaaS product on AWS Marketplace.
    #   @return [String]
    #
    class UsagePlan < Struct.new(
      :id,
      :name,
      :description,
      :api_stages,
      :throttle,
      :quota,
      :product_code)
      include Aws::Structure
    end

    # Represents a usage plan key to identify a plan customer.
    #
    # <div class="remarks" markdown="1">
    # To associate an API stage with a selected API key in a usage plan, you
    # must create a UsagePlanKey resource to represent the selected ApiKey.
    #
    # </div>
    #
    # " <div class="seeAlso">
    # [Create and Use Usage Plans][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html
    #
    # @!attribute [rw] id
    #   The Id of a usage plan key.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of a usage plan key. Currently, the valid key type is
    #   `API_KEY`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a usage plan key.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a usage plan key.
    #   @return [String]
    #
    class UsagePlanKey < Struct.new(
      :id,
      :type,
      :value,
      :name)
      include Aws::Structure
    end

    # Represents the collection of usage plan keys added to usage plans for
    # the associated API keys and, possibly, other types of keys.
    #
    # <div class="seeAlso">
    # [Create and Use Usage Plans][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Gets the current item of the usage plan keys collection.
    #   @return [Array<Types::UsagePlanKey>]
    #
    class UsagePlanKeys < Struct.new(
      :position,
      :items)
      include Aws::Structure
    end

    # Represents a collection of usage plans for an AWS account.
    #
    # <div class="seeAlso">
    # [Create and Use Usage Plans][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-api-usage-plans.html
    #
    # @!attribute [rw] position
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Gets the current item when enumerating the collection of UsagePlan.
    #   @return [Array<Types::UsagePlan>]
    #
    class UsagePlans < Struct.new(
      :position,
      :items)
      include Aws::Structure
    end

  end
end