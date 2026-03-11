const std = @import("std");

const Err = error{Bad};

pub fn main() !void {
    const foo: u8 = 1;
    const foo1: ?u8 = null;
    const foo2: Err!u8 = Err.Bad catch 2;
    const foo3: Err!?u8 = null orelse Err.Bad catch 9;

    const num: ?u8 = null;
    var num1: ?u32 = undefined;
    std.debug.print("{}\n{?}\n{!}\n{!?}\n", .{ foo, foo1, foo2, foo3 });

    num1 = @intCast(num orelse 42);
    std.debug.print("{?}\n{?}", .{ num, num1 });
}
