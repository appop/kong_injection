return {
  fields = {
    sqli = { type = "boolean", required = true },
    xss = { type = "boolean", required = true },
    sqli_mode = { type = "array", enum = { "drop", "log" }, required = true },
    xss_mode = { type = "array", enum = { "drop", "log" }, required = true}
  }
}
