Pod::Spec.new do |s|
  s.name = 'Kamagari'
  s.version = '0.8.0'
  s.license = 'MIT'
  s.summary = 'Simple UIAlertController builder in Swift'
  s.homepage = 'https://github.com/tasanobu/Kamagari'
  s.social_media_url = 'http://twitter.com/tasanobu'
  s.authors = { 'Kazunobu Tasaka' => 'tasanobu@gmail.com' }
  s.source = { :git => 'https://github.com/tasanobu/Kamagari.git', :tag => s.version }
  s.ios.deployment_target = '8.0'
  s.source_files = 'Source/*.swift'
  s.requires_arc = true
end
