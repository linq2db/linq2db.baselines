-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	-(r.A + r.B),
	-(r.A + r.B),
	-(r.A - r.B),
	-(r.A - r.B),
	-BITAND(r.A, r.B),
	-BITAND(r.A, r.B),
	-((r.A + r.B) - BITAND(r.A, r.B)),
	-((r.A + r.B) - BITAND(r.A, r.B)),
	-((r.A + r.B) - BITAND(r.A, r.B) * 2),
	-((r.A + r.B) - BITAND(r.A, r.B) * 2),
	r.B,
	-(-1 - r.B),
	--5,
	-(-5 * r.B)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	-(r.A + r.B)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	-(r.A + r.B)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	-(r.A - r.B)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	-(r.A - r.B)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	-BITAND(r.A, r.B)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	-BITAND(r.A, r.B)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	-((r.A + r.B) - BITAND(r.A, r.B))
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	-((r.A + r.B) - BITAND(r.A, r.B))
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	-((r.A + r.B) - BITAND(r.A, r.B) * 2)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	-((r.A + r.B) - BITAND(r.A, r.B) * 2)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	r.B
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	-(-1 - r.B)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	--5
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	-(-5 * r.B)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	--5
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	--5
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- cell Neg/Neg(Add(a,b)): green
-- cell Neg/Neg(AsNotNull(Add(a,b))): green
-- cell Neg/Neg(Sub(a,b)): green
-- cell Neg/Neg(AsNotNull(Sub(a,b))): green
-- cell Neg/Neg(Mul(a,b)): skipped
-- cell Neg/Neg(AsNotNull(Mul(a,b))): skipped
-- cell Neg/Neg(Div(a,b)): skipped
-- cell Neg/Neg(AsNotNull(Div(a,b))): skipped
-- cell Neg/Neg(Mod(a,b)): skipped
-- cell Neg/Neg(AsNotNull(Mod(a,b))): skipped
-- cell Neg/Neg(And(a,b)): green
-- cell Neg/Neg(AsNotNull(And(a,b))): green
-- cell Neg/Neg(Or(a,b)): green
-- cell Neg/Neg(AsNotNull(Or(a,b))): green
-- cell Neg/Neg(Xor(a,b)): green
-- cell Neg/Neg(AsNotNull(Xor(a,b))): green
-- cell Neg/Neg(Neg(b)): green
-- cell Neg/Neg(Not(b)): green
-- cell Neg/Neg(NegLit(b)): error
-- cell Neg/Neg(NegParam(b)): error
-- cell Neg/Neg(Mul(NegLit,b)): green
