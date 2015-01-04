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

* Integer support or number ??

  /users/1 时 1会被解析成字符串，导致TypeValidator没有按预期执行
  可以用NumberValidator, parma :id, :number

* how to better config in production mode?

* integrate with real test

* give sample and response, sample and demo 

* run in just non-production? 有何影响，还会检查参数吗？

