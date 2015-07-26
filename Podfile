# Uncomment this line to define a global platform for your project
platform :ios, '8.0'

use_frameworks!
inhibit_all_warnings!

def testing_pods
  pod 'Quick', :git => 'git@github.com:Quick/Quick.git', :branch => 'swift-2.0'
  pod 'Nimble', :git => 'git@github.com:Quick/Nimble.git', :branch => 'swift-2.0'
end

target 'BaseDataStructure' do

end

target 'BaseDataStructureTests' do
  testing_pods
end

target 'BaseDataStructureUITests' do
  testing_pods
end
