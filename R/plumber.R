#
# This is a Plumber API. You can run the API by clicking
# the 'Run API' button above.
#
# Find out more about building APIs with Plumber here:
#
#    https://www.rplumber.io/
#

library(plumber)
library(mlflow)

model <- mlflow_load_model("mlruns/1/50d616c535734fe7920dee2e583a136b/artifacts/model")

#* @apiTitle mlflow deploy example

#* Predict output based on user input
#* @post /predict
function(req, res) {
  data <- tryCatch(jsonlite::parse_json(req$postBody, simplifyVector = TRUE),
                   error = function(e) NULL)
  if (is.null(data)) {
    res$status <- 400
    return(list(error = "No data submitted"))
  }
  
  mlflow_predict(model, data)
}