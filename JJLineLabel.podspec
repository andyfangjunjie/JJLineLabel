Pod::Spec.new do |s|

s.name = 'JJLineLabel'
s.version = '0.0.2'
s.platform = :ios, '7.0'
s.summary = '一个label中间横线或者下部横线'
s.homepage = 'https://github.com/andyfangjunjie/JJLineLabel'
s.license = 'MIT'
s.author = { 'andyfangjunjie' => 'andyfangjunjie@163.com' }
s.source = {:git => 'https://github.com/andyfangjunjie/JJLineLabel.git', :tag => s.version}
s.source_files = 'JJLineLabel/**/*.{h,m}'
s.requires_arc = true
s.framework  = 'UIKit'

end
