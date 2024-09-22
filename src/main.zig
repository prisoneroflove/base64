const std = @import("std");
const page_allocator = std.heap.page_allocator;
pub fn main() !void {
    //gets
    var args = try std.process.argsWithAllocator(page_allocator);
    defer args.deinit();
    while (args.next()) |arg| {
        std.debug.print("{s}\n", .{arg});
    }
}
