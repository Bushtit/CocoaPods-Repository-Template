Pod::Spec.new do |s|
  s.name        = 'RepoName'
  s.module_name = 'RepoName'
  s.version     = '1.0.0'
  s.summary     = 'A summary.'

  s.homepage    = 'https://github.com/Meniny/RepoName'
  s.license     = { type: 'MIT', file: 'LICENSE.md' }
  s.authors     = { 'Elias Abel' => 'admin@meniny.cn' }
  s.social_media_url = 'https://meniny.cn/'
  # s.screenshot = ''

  s.ios.deployment_target     = '8.0'
  s.osx.deployment_target     = '10.10'
#  s.tvos.deployment_target    = '9.0'
#  s.watchos.deployment_target = '2.0'

  s.requires_arc        = true
  s.source              = { git: 'https://github.com/Meniny/RepoName.git', tag: s.version.to_s }
  s.source_files        = 'RepoName/**/*.swift'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
  s.swift_version       = '4.1'
  # s.documentation_url   = 'https://meniny.cn/RepoName/docs'

  s.dependency "Jsonify"

  s.default_subspecs = 'Core', 'Foundation', 'UIKit', 'AppKit', 'CoreLocation', 'CoreGraphics', 'Testing', 'sysctl', 'Runtime'

  # SwiftStdlib Extensions
  s.subspec 'Core' do |sp|
    sp.source_files  = 'RepoName/Core/**/*.swift', 'RepoName/SwiftStdlib/**/*.swift'
  end

  # Foundation Extensions
  s.subspec 'Foundation' do |sp|
    sp.source_files  = 'RepoName/Foundation/**/*.swift'
    sp.dependency      'RepoName/Core'
  end

  # UIKit Extensions
  s.subspec 'UIKit' do |sp|
    sp.source_files  = 'RepoName/UIKit/**/*.swift'
    sp.dependency      'RepoName/Core'
  end
end
