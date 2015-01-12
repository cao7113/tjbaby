# Rails Counter Cache Concurrency Issue

### 问题

× reset counter cache
reset_counter

有手工维护api：
increment_counter
decrement_counter

### 初步研究结论

 3.2.15版本

  是通过 after_create, before_create的回调的update sql维护的

 4.2版本
  
  实现机制有变更，感觉不太稳定，还是直接应用维护比较好，不要太图省事

### ref

* http://building.wanelo.com/2014/06/20/counter-cache-a-story-of-counting.html
* https://github.com/wanelo/counter-cache
* https://www.ruby-forum.com/topic/156588
