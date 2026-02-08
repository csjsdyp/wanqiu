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
  cat("
========================================
  欢迎使用 wanqiu 包！
  版本：你猜
  作者：B站：空桐晚秋
  你的关注是我更新的动力
  \033[31m【获取帮助】：give_help()
  【支持 u p】：give_support()\033[0m
========================================")
  assign("key", "my_secret_key", envir = asNamespace(pkgname))
  give_help()
}
