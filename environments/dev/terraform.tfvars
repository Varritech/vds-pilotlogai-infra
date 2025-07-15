project_id              = "my-firebase-dev"
location                = "us"
region                  = "us-central1"
artifact_registry_name  = "gcf-artifacts"
artifact_registry_format = "docker"
function_names          = ["helloWorld", "sendEmail"]
function_entry_points   = {
  helloWorld = "helloWorld"
  sendEmail  = "sendEmail"
}
function_runtime        = "nodejs20"
functions_source_bucket = "my-firebase-dev-functions"
functions_source_object = "functions.zip"
cloud_functions_sa      = "pilotlogai-cloud-api@pilotlogai.iam.gserviceaccount.com"
vpc_connector           = "" 