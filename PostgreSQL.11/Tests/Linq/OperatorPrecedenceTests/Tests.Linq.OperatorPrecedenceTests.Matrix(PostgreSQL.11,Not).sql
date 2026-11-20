-- PostgreSQL.11 PostgreSQL
SELECT
	~r."A" + r."B",
	~r."A" + r."B",
	~r."A" - r."B",
	~r."A" - r."B",
	~r."A" * r."B",
	~r."A" * r."B",
	~r."A" / r."B",
	~r."A" / r."B",
	~(r."A" & r."B"),
	~(r."A" & r."B"),
	~(r."A" | r."B"),
	~(r."A" | r."B"),
	~(-r."B"),
	~(~r."B"),
	~(-5),
	~(-5 * r."B")
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	~(-5)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- cell Not/Not(Add(a,b)): green
-- cell Not/Not(AsNotNull(Add(a,b))): green
-- cell Not/Not(Sub(a,b)): green
-- cell Not/Not(AsNotNull(Sub(a,b))): green
-- cell Not/Not(Mul(a,b)): green
-- cell Not/Not(AsNotNull(Mul(a,b))): green
-- cell Not/Not(Div(a,b)): green
-- cell Not/Not(AsNotNull(Div(a,b))): green
-- cell Not/Not(Mod(a,b)): skipped
-- cell Not/Not(AsNotNull(Mod(a,b))): skipped
-- cell Not/Not(And(a,b)): green
-- cell Not/Not(AsNotNull(And(a,b))): green
-- cell Not/Not(Or(a,b)): green
-- cell Not/Not(AsNotNull(Or(a,b))): green
-- cell Not/Not(Xor(a,b)): skipped
-- cell Not/Not(AsNotNull(Xor(a,b))): skipped
-- cell Not/Not(Neg(b)): green
-- cell Not/Not(Not(b)): green
-- cell Not/Not(NegLit(b)): green
-- cell Not/Not(NegParam(b)): green
-- cell Not/Not(Mul(NegLit,b)): green
