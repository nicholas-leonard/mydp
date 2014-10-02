package = "mydp"
version = "scm-1"

source = {
   url = "https://github.com/nicholas-leonard/mydp"
}

dependencies = {
   "dp >= 1.0"
}

description = {
   summary = "Skeleton repository for building local dp objects and scripts",
   detailed = [[ 
]],
   homepage = "https://github.com/nicholas-leonard/mydp/blob/master/README.md"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build;
cd build;
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)"; 
$(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}
