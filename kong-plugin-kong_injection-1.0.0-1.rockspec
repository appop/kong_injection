package = "kong_injection"
version = "1.0.0"

source = {
  -- these are initially not required to make it work
  url = "git://github.com/appop/kong_injection",
  tag = "1.0.0"
}

description = {
  summary = "Kong plugin for detection of SQL injections and XSS code",
  homepage = "https://github.com/appop/kong_injection",
  license = "MIT"
}

dependencies = {
	  "lua >= 5.3.4",
	  "resty.injection >=  1.0-1"
}

build = {
    type = "builtin",
    modules = {
    ["kong.plugins.kong_injection.access"] = "kong/plugins/kong_injection/access.lua",
    ["kong.plugins.kong_injection.handler"] = "kong/plugins/kong_injection/handler.lua",
    ["kong.plugins.kong_injection.schema"] = "kong/plugins/kong_injection/schema.lua",
 }
}
