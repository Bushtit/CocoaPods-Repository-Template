Pod::Spec.new do |s|
  s.name        = 'RepoName'
  s.module_name = 'RepoName'
  s.version     = '1.0.0'
  s.summary     = 'A summary.'

  s.homepage    = 'https://github.com/Bushtit/RepoName'
  s.license     = { type: 'MIT', file: 'LICENSE.md' }
  s.authors     = { 'Bushtit Lab' => 'admin@meniny.cn' }
  s.social_media_url = 'https://meniny.cn/'
  # s.screenshot = ''

  s.ios.deployment_target     = '8.0'
  s.osx.deployment_target     = '10.10'
#  s.tvos.deployment_target    = '9.0'
#  s.watchos.deployment_target = '2.0'

  s.requires_arc        = true
  s.source              = { git: 'https://github.com/Bushtit/RepoName.git', tag: s.version.to_s }
  #s.source_files        = 'RepoName/**/*.swift'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
  s.swift_version       = '4.1'
  # s.documentation_url   = 'https://meniny.cn/RepoName/docs'

  #s.dependency "Jsonify"

  s.default_subspecs = 'Core'
  
  s.subspec 'Core' do |sp|
    sp.source_files  = 'RepoName/Core/**/*.swift'
end
