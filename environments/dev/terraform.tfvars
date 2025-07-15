project_id              = "pilotlogai"
location                = "us"
region                  = "us-central1"
artifact_registry_name  = "gcf-artifacts"
artifact_registry_format = "docker"
function_names          = ["api", "myFunction"]
function_entry_points   = { api = "api", myFunction = "myFunction" }
function_runtime        = "nodejs22"
functions_source_bucket = "pilotlogai-functions-source"
functions_source_object = "source.zip"
cloud_functions_sa      = "395510094695-compute@developer.gserviceaccount.com"
vpc_connector           = ""