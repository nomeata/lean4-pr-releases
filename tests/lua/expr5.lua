e = context_entry("a", Const("a"))
n = e:get_body()
check_error(function() mk_eq(n, Const("a")) end)
print(Const("a") < Const("b"))
check_error(function() mk_app(Const("a")) end)
print(mk_eq(Const("a"), Const("b")))
print(mk_pi("x", Const("N"), Var(0)))
print(Pi("x", Const("N"), Const("x")))
assert(mk_pi("x", Const("N"), Var(0)) == Pi("x", Const("N"), Const("x")))
assert(mk_let("x", Const("a"), Var(0)) == Let("x", Const("a"), Const("x")))
print(mk_let("x", Const("N"), Const("a"), Var(0)))
check_error(function() Pi({"x"}, Const("x")) end)
check_error(function() Pi({"x", Const("N")}, Const("x")) end)
check_error(function() Pi({{"x"}}, Const("x")) end)
check_error(function() Pi(Const("x")) end)
check_error(function() Pi(Const("x"), Const("N"), Const("x"), Const("a")) end)
check_error(function() Pi({}, Const("x")) end)





