% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/branch.R
\name{is_head}
\alias{is_head}
\title{Check if branch is head}
\usage{
is_head(branch = NULL)
}
\arguments{
\item{branch}{The branch \code{object} to check if it's head.}
}
\value{
\code{TRUE} if branch is head, else \code{FALSE}.
}
\description{
Check if branch is head
}
\examples{
\dontrun{
## Initialize a temporary repository
path <- tempfile(pattern="git2r-")
dir.create(path)
repo <- init(path)

## Create a user and commit a file
config(repo, user.name="Alice", user.email="alice@example.org")
writeLines("Hello world!", file.path(path, "example.txt"))
add(repo, "example.txt")
commit(repo, "First commit message")

## List branches
branches(repo)

## Check that 'master' is_head
master <- branches(repo)[[1]]
is_head(master)

## Create and checkout 'dev' branch
checkout(repo, "dev", create = TRUE)

## List branches
branches(repo)

## Check that 'master' is no longer head
is_head(master)
}
}
