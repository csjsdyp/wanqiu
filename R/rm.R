
#' Title
#'
#' @param ...
#' @param list
#'
#' @returns a
#' @export a
#'
#' @examples
rm <- function(..., list = character()){
  # 获取 ... 中的对象名
  dots <- as.character(substitute(list(...)))[-1]

  # 合并 list 参数和 ... 参数
  all_names <- unique(c(dots, list))

  if (length(all_names) > 0) {
    # 过滤掉包含"B站"的对象（根据你的注释）
    logic <- grepl("B站", all_names)
    all_names <- all_names[!logic]
    # cat("将要删除的对象:", paste(all_names, collapse = ", "), "\n")
    base::rm(list = all_names, envir = parent.frame())
  }
}
