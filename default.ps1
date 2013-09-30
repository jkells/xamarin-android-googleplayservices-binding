properties { 
  $base_dir = resolve-path .  
  $nugetbin = "$base_dir\.nuget\nuget.exe"
  $project_dir = "$base_dir\GooglePlayServices.Binding"
  $sln_file = "$base_dir\GooglePlayServices.Binding.sln"  
  $config = "Release"  
}

Framework "4.0"

task default -depends Package

task Clean {  
  remove-item -force -recurse $project_dir\obj -ErrorAction SilentlyContinue
  remove-item -force -recurse $project_dir\bin -ErrorAction SilentlyContinue
}

task Compile -depends Clean {
    msbuild $sln_file /p:"Configuration=$config"
}

task Package -depends Compile{
    & $nugetbin pack "$project_dir\Package.nuspec"
}

