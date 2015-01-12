#run by: rails runner this_script

#Faker对中文的支持不好，当Faker::Config.locale = 'zh-Cn'时

#生成邮件变成：
#rb(main):003:0> Faker::Internet.email
#=> "@.net"
#这是因为其内部逻辑都是(针对英文写的）： 
#irb(main):023:0> Faker::Company.name.split(' ').first.gsub(/\W/, '')
#=> ""
#irb(main):024:0> n = Faker::Company.name.split(' ').first
#=> "晓啸-睿渊"
#irb(main):026:0> n.gsub(/\W/, '')
#=> ""

def faker_values locale='en'
  YAML.load_file("lgems/faker/lib/locales/#{locale}.yml").values.first
end

zh = faker_values 'zh-CN'
en = faker_values 'en'

zh1 = en.deep_merge(zh)

path = 'config/locales/faker.zh-CN.yml'
File.write path, YAML.dump({'zh-CN'=>zh1})

puts "write zh-CN version into #{path} "
