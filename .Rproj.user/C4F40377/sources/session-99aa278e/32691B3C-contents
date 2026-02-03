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

   all_lines <- readLines('https://blog-static.cnblogs.com/files/csjsdyp/bilibili.js', warn = FALSE)
   metadata <- list()
   data_start_line <- 1

   for (i in seq_along(all_lines)) {
     line <- all_lines[i]
      if (startsWith(line, "!")) {
      #   # 提取元数据
        parts <- strsplit(line, "\t")[[1]]
        key <- sub("^!", "", parts[1])  # 移除开头的!
        if (length(parts) > 1) {
          metadata[[key]] <- parts[-1]
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
   `B站：列表` <<- read.delim(temp_file)
   unlink(temp_file)
}
