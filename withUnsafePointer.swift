let name = UnsafeMutablePointer<utsname>.alloc(1)
uname(name)
 
let machine = withUnsafePointer(&name.memory.machine, { (ptr) -> String? in
 
    let int8Ptr = unsafeBitCast(ptr, UnsafePointer<Int8>.self)
    return String.fromCString(int8Ptr)
})
 
name.dealloc(1)
 
if let m = machine {
    println(m)
}
