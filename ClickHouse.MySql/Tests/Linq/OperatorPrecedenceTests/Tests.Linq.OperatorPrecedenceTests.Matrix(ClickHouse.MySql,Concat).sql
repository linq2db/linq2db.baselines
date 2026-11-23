-- ClickHouse.MySql ClickHouse
SELECT
	concat(Coalesce(r.S, ''), toString(r.A + r.B)),
	concat(toString(r.A + r.B), Coalesce(r.S, '')),
	arrayStringConcat([Coalesce(r.S, ''), (r.B + r.C), r.C], ','),
	concat(Coalesce(r.S, ''), Coalesce(r.S, ''), toString(r.A + r.B)),
	arrayStringConcat([Coalesce(r.S, ''), negate(r.B + r.C), r.C], ','),
	arrayStringConcat([Coalesce(r.S, ''), bitNot(r.B + r.C), r.C], ','),
	concat(Coalesce(r.S, ''), toString(r.A - r.B)),
	concat(toString(r.A - r.B), Coalesce(r.S, '')),
	arrayStringConcat([Coalesce(r.S, ''), (r.B - r.C), r.C], ','),
	concat(Coalesce(r.S, ''), Coalesce(r.S, ''), toString(r.A - r.B)),
	arrayStringConcat([Coalesce(r.S, ''), negate(r.B - r.C), r.C], ','),
	arrayStringConcat([Coalesce(r.S, ''), bitNot(r.B - r.C), r.C], ','),
	concat(Coalesce(r.S, ''), toString(r.A * r.B)),
	concat(toString(r.A * r.B), Coalesce(r.S, '')),
	arrayStringConcat([Coalesce(r.S, ''), (r.B * r.C), r.C], ','),
	concat(Coalesce(r.S, ''), Coalesce(r.S, ''), toString(r.A * r.B)),
	arrayStringConcat([Coalesce(r.S, ''), negate(r.B * r.C), r.C], ','),
	arrayStringConcat([Coalesce(r.S, ''), bitNot(r.B * r.C), r.C], ','),
	concat(Coalesce(r.S, ''), toString(intDiv(r.A, r.B))),
	concat(toString(intDiv(r.A, r.B)), Coalesce(r.S, '')),
	arrayStringConcat([Coalesce(r.S, ''), intDiv(r.B, r.C), r.C], ','),
	concat(Coalesce(r.S, ''), Coalesce(r.S, ''), toString(intDiv(r.A, r.B))),
	arrayStringConcat([Coalesce(r.S, ''), negate(intDiv(r.B, r.C)), r.C], ','),
	arrayStringConcat([Coalesce(r.S, ''), bitNot(intDiv(r.B, r.C)), r.C], ','),
	concat(Coalesce(r.S, ''), toString(r.A % r.B)),
	concat(toString(r.A % r.B), Coalesce(r.S, '')),
	arrayStringConcat([Coalesce(r.S, ''), (r.B % r.C), r.C], ','),
	concat(Coalesce(r.S, ''), Coalesce(r.S, ''), toString(r.A % r.B)),
	arrayStringConcat([Coalesce(r.S, ''), negate(r.B % r.C), r.C], ','),
	arrayStringConcat([Coalesce(r.S, ''), bitNot(r.B % r.C), r.C], ','),
	concat(Coalesce(r.S, ''), toString(bitAnd(r.A, r.B))),
	concat(toString(bitAnd(r.A, r.B)), Coalesce(r.S, '')),
	arrayStringConcat([Coalesce(r.S, ''), bitAnd(r.B, r.C), r.C], ','),
	concat(Coalesce(r.S, ''), Coalesce(r.S, ''), toString(bitAnd(r.A, r.B))),
	arrayStringConcat([Coalesce(r.S, ''), negate(bitAnd(r.B, r.C)), r.C], ','),
	arrayStringConcat([Coalesce(r.S, ''), bitNot(bitAnd(r.B, r.C)), r.C], ','),
	concat(Coalesce(r.S, ''), toString(bitOr(r.A, r.B))),
	concat(toString(bitOr(r.A, r.B)), Coalesce(r.S, '')),
	arrayStringConcat([Coalesce(r.S, ''), bitOr(r.B, r.C), r.C], ','),
	concat(Coalesce(r.S, ''), Coalesce(r.S, ''), toString(bitOr(r.A, r.B))),
	arrayStringConcat([Coalesce(r.S, ''), negate(bitOr(r.B, r.C)), r.C], ','),
	arrayStringConcat([Coalesce(r.S, ''), bitNot(bitOr(r.B, r.C)), r.C], ','),
	concat(Coalesce(r.S, ''), toString(bitXor(r.A, r.B))),
	concat(toString(bitXor(r.A, r.B)), Coalesce(r.S, '')),
	arrayStringConcat([Coalesce(r.S, ''), bitXor(r.B, r.C), r.C], ','),
	concat(Coalesce(r.S, ''), Coalesce(r.S, ''), toString(bitXor(r.A, r.B))),
	arrayStringConcat([Coalesce(r.S, ''), negate(bitXor(r.B, r.C)), r.C], ','),
	arrayStringConcat([Coalesce(r.S, ''), bitNot(bitXor(r.B, r.C)), r.C], ','),
	concat(Coalesce(r.S, ''), toString(negate(r.A))),
	concat(toString(negate(r.A)), Coalesce(r.S, '')),
	concat(Coalesce(r.S, ''), toString(bitNot(r.A))),
	concat(toString(bitNot(r.A)), Coalesce(r.S, '')),
	concat(Coalesce(r.S, ''), '-5'),
	concat('-5', Coalesce(r.S, ''))
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	concat(Coalesce(r.S, ''), '-5'),
	concat('-5', Coalesce(r.S, ''))
FROM
	PrecedenceRow r
ORDER BY
	r.Id

