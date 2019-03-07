project "MemoryPool"
    kind "StaticLib"
    language "C++"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "C-11/MemoryPool.h",
        "C-11/MemoryPool.tcc"
    }
    
	filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
       
  filter "system:linux"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
        
  filter { "system:windows", "configurations:Release" }
      buildoptions "/MT"
