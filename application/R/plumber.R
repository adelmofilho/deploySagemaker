# plumber.R
library(jsonlite)
library(ranger)
library(plumber)
#' Ping to show server is there
#' @get /ping
function(res) {
    res$status <- 200
    return('')
}

#' Parse input and return prediction from model
#' @param req The http request sent
#' @post /invocations
function(req, res) {
    prefix <- "/opt/ml/model/"
    res$status <- 200
    data <- as.data.frame(jsonlite::fromJSON(req$postBody))
    model <- readRDS(paste0(prefix, "model.RDS"))
    a = predict(model, data = data)
    jsonlite::toJSON(a$prediction)
}