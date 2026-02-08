#' Title
#'
#' @param libname
#' @param pkgname
#'
#' @returns
#' @export
#'
#' @examples
.onLoad <- function(libname, pkgname) {
  # 初始化代码
  packageStartupMessage("
========================================
欢迎使用 wanqiu 包！
版本：1.0.0
作者：B站：空桐晚秋
运行 ?mypackage 查看帮助文档
========================================")
  assign("key", "my_secret_key", envir = asNamespace(pkgname))
  Bzhan()
}
