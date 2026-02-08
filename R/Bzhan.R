#' Title
#'
#' @returns a
#' @export a
#'
#' @examples  Bzhan()
Bzhan=function(){
  logic=any(grepl("B站", ls()))
  if(!logic){
    return
  }
  link=paste0(
    'https://blog-static.cnblogs.com/files/csjsdyp/bilibili.js',
    '?t=',
    paste(sample(0:9, 10, replace = TRUE), collapse = ""),
    '&download=true'
  )
   all_lines <- readLines(link, warn = FALSE)
   metadata <- list()
   data_start_line <- 1

   for (i in seq_along(all_lines)) {
     line <- all_lines[i]
      if (startsWith(line, "!")) {
      #   # 提取元数据
        parts <- strsplit(line, "\t")[[1]]
        key1 <- sub("^!", "", parts[1])  # 移除开头的!
        if (length(parts) > 1) {
          metadata[[key1]] <- parts[-1]
        }

        # 找到数据表开始位置
        if (startsWith(line, "!series_matrix_table_begin")) {
          data_start_line <- i + 1  # 数据从下一行开始
          break
        }
      }
   }

   data_part=all_lines[data_start_line:length(all_lines)]
   temp_file <- tempfile()
   writeLines(data_part, temp_file)

    # output
   `B站：空桐晚秋`<<-metadata
   `B站：视频列表` <<- read.delim(temp_file)
   unlink(temp_file)
}


# # 包加载时自动执行的函数
# .onAttach <- function(libname, pkgname) {
#   packageStartupMessage("
# ========================================
# 欢迎使用 mypackage 包！
# 版本：1.0.0
# 作者：Your Name
# 运行 ?mypackage 查看帮助文档
# ========================================")
#
#   # 自动执行 setup 函数
#   Bzhan()
# }


