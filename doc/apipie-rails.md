# Use apipie-rails for Rails api doc

[Apipie-rails](https://github.com/Apipie/apipie-rails)

## Steps to use

* gem 'apipie-rails' >> Gemfile

* run: rails generate apipie:install --> config/initializer/apipie.rb
  
## Good features

* 可以获取接口的json数据: /apipie.json
* 层级级划分：application, resource, action, param
* Dsl
* rails engine

## Apipie的设计/工作原理

validate
    Parameters validation is turned off when set to false. When set to :explicitly, you must invoke parameter validation yourself by calling controller method apipie_validations (typically in a before_filter). When set to :implicitly (or just true), your controller's action methods are wrapped with generated methods which call apipie_validations then call the action method. (:implicitly by default)

## Todo dig 

* number时的验证，如 tag_id= ??? allow_nil: true

* Integer support or number ??

  /users/1 时 1会被解析成字符串，导致TypeValidator没有按预期执行
  可以用NumberValidator, parma :id, :number

  better!

  other way:

  set config.process_params = true, then
  扩展TypeValidator, 增加process_value方法 Integer('1')


* how to better config in production mode?

* integrate with real test

* give sample and response, sample and demo 

* run in just non-production? 有何影响，还会检查参数吗？

* 如何生成静态文档及更新机制？

× 如何发布？

× 在手机环境中认证机制介入, apipie中的认证只是对文档访问的认证; api访问认证和apidoc访问认证是两个概念！

* 与test的集成
