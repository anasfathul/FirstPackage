#' The knn cv function
#'
#' This function is used to fit linear model and carry out linear regression.
#'
#' @param formula an object class as a symbolic description of the
#'  model to be fitted.
#' @param data input data frame.
#' @keywords regression, linear model, inference, prediction.
#'
#' @return a table similar to coefficient table of lm()
#'
#' @examples
#' formula <- mpg ~ hp + wt
#' data <- mtcars
#' my_lm(formula, data)
#'
#'
#' @export
my_knn_cv <- function(train, cl, k_nn, k_cv) {

  # Randomly assign observation to folds with equal probability
  fold <- k_cv
  count <- nrow(train)
  inds <- sample(rep(1:fold, length = count))
  n_data <- train %>% mutate("split" = inds)

  # Variable classy and prob_attr to keep track the predicted class and probability
  classy <- vector(length = length(train))
  prob_attr <- 0

  # for loops to iterate every each fold
  for (i in 1:fold) {

    # In each iteration, the data splitted into 5 parts where we take the fold
    # data as test data and others as training
    x_train <- n_data %>% filter(split != i)
    x_test <- n_data %>% filter(split == i)
    y_train <- cl[inds != i]

    # record the prediction and miscalculation
    classy[fold == i] <- knn(x_train, x_test, y_train, k_nn)
    check <- suppressWarnings(as.numeric(cl[inds == i]))
    if (check != class[inds]) {
      prob_attr <- prob_attr + length(check)
    }
  }
  # Calculate the average misclassification rate
  cv_err <- prob_attr / count
  # Store and return the output
  my_output <- list("class" = classy,
                    "cv_err" = cv_err)
  return(my_output)
}
