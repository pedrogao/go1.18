# context

```
type Context interface {
    Deadline() (deadline time.Time, ok bool)
    Done() <-chan struct{}
    Err() error
    Value(key interface{}) interface{}
}
```

* Deadline 方法会返回这个 Context 被取消的截止日期。如果没有设置截止日期，ok 的值是 false。   
  后续每次调用这个对象的 Deadline 方法时，都会返回和第一次调用相同的结果。
* Done 方法返回一个 Channel 对象。在 Context 被取消时，此 Channel 会被 close，如果没被取消，可能会返回 nil。   
  后续的 Done 调用总是返回相同的结果。当 Done 被 close 的时候，你可以通过 ctx.Err 获取错误信息。
* Value 返回此 ctx 中和指定的 key 相关联的 value。

记住，不是只有你想中途放弃，才去调用 cancel，只要你的任务正常完成了，  
就需要调用 cancel，这样，这个 Context 才能释放它的资源  
（通知它的 children 处理 cancel，从它的 parent 中把自己移除，甚至释放相关的 goroutine）。

## 参考资料

- [Context isn’t for cancellation](https://dave.cheney.net/2017/08/20/context-isnt-for-cancellation)
- [Canceling in-progress operations](https://go.dev/doc/database/cancel-operations)
- [Go Concurrency Patterns: Context](https://go.dev/blog/context)
- [Using Context Package in GO (Golang) – Complete Guide](https://golangbyexample.com/using-context-in-golang-complete-guide/)
- [Go语言之 Context 实战与源码分析](https://www.lixueduan.com/post/go/context/)