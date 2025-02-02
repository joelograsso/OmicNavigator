% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add.R
\name{addMapping}
\alias{addMapping}
\title{Add mapping object}
\usage{
addMapping(study, mapping, reset = FALSE)
}
\arguments{
\item{study}{An OmicNavigator study created with \code{\link{createStudy}}}

\item{mapping}{Feature IDs from models. The input object is a list object
with element names matching model names, and each element containing a
vector with feature IDs per model. Features with same index position across
models are considered found across models. For each model, the feature IDs
must match the feature IDs from results object of the respective model.}

\item{reset}{Reset the data prior to adding the new data (default:
\code{FALSE}). The default is to add to or modify any previously added data
(if it exists). Setting \code{reset = TRUE} enables you to remove existing
data you no longer want to include in the study.}
}
\value{
Returns the original \code{onStudy} object passed to the argument
  \code{study}, but modified to include the newly added data
}
\description{
Includes a mapping list connecting features across models.
}
\details{
Mapping object consists of a list with element names matching the model
names, and each element consisting in a vector with feature IDs found in the
result object. For making meaningful connections between models, feature IDs
for distinct models must be aligned per index position in the vector.
E.g., if in a study there are models "transcriptomics" and "proteomics" and
the user wants to create a plot based on data from both, a mapping list with
element names "transcriptomics" and "proteomics" should be created, where
feature IDs of both models are found in the same index position in each list
element.
}
\seealso{
\code{\link{getPlottingData}}, \code{\link{plotStudy}}
}
