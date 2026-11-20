-- PostgreSQL.9.2 PostgreSQL
SELECT
	Coalesce(r."S", '') || (r."A" + r."B")::text,
	(r."A" + r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" + r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" + r."B")::text,
	Coalesce(r."S", '') || (r."A" - r."B")::text,
	(r."A" - r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" - r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" - r."B")::text,
	Coalesce(r."S", '') || (r."A" * r."B")::text,
	(r."A" * r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" * r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" * r."B")::text,
	Coalesce(r."S", '') || (r."A" / r."B")::text,
	(r."A" / r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" / r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" / r."B")::text,
	Coalesce(r."S", '') || Floor(r."A"::decimal % r."B")::Int::text,
	Floor(r."A"::decimal % r."B")::Int::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), Floor(r."B"::decimal % r."C")::Int, r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || Floor(r."A"::decimal % r."B")::Int::text,
	Coalesce(r."S", '') || (r."A" & r."B")::text,
	(r."A" & r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" & r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" & r."B")::text,
	Coalesce(r."S", '') || (r."A" | r."B")::text,
	(r."A" | r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" | r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" | r."B")::text,
	Coalesce(r."S", '') || (r."A" # r."B")::text,
	(r."A" # r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" # r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" # r."B")::text,
	Coalesce(r."S", '') || (-r."A")::text,
	(-r."A")::text || Coalesce(r."S", ''),
	Coalesce(r."S", '') || (~r."A")::text,
	(~r."A")::text || Coalesce(r."S", ''),
	Coalesce(r."S", '') || '-5',
	'-5' || Coalesce(r."S", '')
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	Coalesce(r."S", '') || '-5',
	'-5' || Coalesce(r."S", '')
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- cell Concat/Concat(s,Add(a,b)): green
-- cell Concat/Concat(Add(a,b),s): green
-- cell Concat/Join(s,Add(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Add(a,b))): green
-- cell Concat/Concat(s,Sub(a,b)): green
-- cell Concat/Concat(Sub(a,b),s): green
-- cell Concat/Join(s,Sub(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Sub(a,b))): green
-- cell Concat/Concat(s,Mul(a,b)): green
-- cell Concat/Concat(Mul(a,b),s): green
-- cell Concat/Join(s,Mul(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Mul(a,b))): green
-- cell Concat/Concat(s,Div(a,b)): green
-- cell Concat/Concat(Div(a,b),s): green
-- cell Concat/Join(s,Div(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Div(a,b))): green
-- cell Concat/Concat(s,Mod(a,b)): green
-- cell Concat/Concat(Mod(a,b),s): green
-- cell Concat/Join(s,Mod(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Mod(a,b))): green
-- cell Concat/Concat(s,And(a,b)): green
-- cell Concat/Concat(And(a,b),s): green
-- cell Concat/Join(s,And(b,c),c): green
-- cell Concat/Concat(s,Concat(s,And(a,b))): green
-- cell Concat/Concat(s,Or(a,b)): green
-- cell Concat/Concat(Or(a,b),s): green
-- cell Concat/Join(s,Or(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Or(a,b))): green
-- cell Concat/Concat(s,Xor(a,b)): green
-- cell Concat/Concat(Xor(a,b),s): green
-- cell Concat/Join(s,Xor(b,c),c): green
-- cell Concat/Concat(s,Concat(s,Xor(a,b))): green
-- cell Concat/Concat(s,Neg(a)): green
-- cell Concat/Concat(Neg(a),s): green
-- cell Concat/Concat(s,Not(a)): green
-- cell Concat/Concat(Not(a),s): green
-- cell Concat/Concat(s,NegLit(a)): green
-- cell Concat/Concat(NegLit(a),s): green
-- cell Concat/Concat(s,NegParam(a)): green
-- cell Concat/Concat(NegParam(a),s): green
