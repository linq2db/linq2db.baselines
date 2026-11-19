-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || RTrim(Char("r".A + "r".B)),
	RTrim(Char("r".A + "r".B)) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || "r".B + "r".C || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char("r".A + "r".B)),
	Coalesce("r".S, '') || RTrim(Char("r".A - "r".B)),
	RTrim(Char("r".A - "r".B)) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || "r".B - "r".C || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char("r".A - "r".B)),
	Coalesce("r".S, '') || RTrim(Char("r".A * "r".B)),
	RTrim(Char("r".A * "r".B)) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || "r".B * "r".C || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char("r".A * "r".B)),
	Coalesce("r".S, '') || RTrim(Char("r".A / "r".B)),
	RTrim(Char("r".A / "r".B)) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || "r".B / "r".C || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char("r".A / "r".B)),
	Coalesce("r".S, '') || RTrim(Char(Mod("r".A, "r".B))),
	RTrim(Char(Mod("r".A, "r".B))) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || Mod("r".B, "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char(Mod("r".A, "r".B))),
	Coalesce("r".S, '') || RTrim(Char(BitAnd("r".A, "r".B))),
	RTrim(Char(BitAnd("r".A, "r".B))) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || BitAnd("r".B, "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char(BitAnd("r".A, "r".B))),
	Coalesce("r".S, '') || RTrim(Char(BitOr("r".A, "r".B))),
	RTrim(Char(BitOr("r".A, "r".B))) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || BitOr("r".B, "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char(BitOr("r".A, "r".B))),
	Coalesce("r".S, '') || RTrim(Char(BitXor("r".A, "r".B))),
	RTrim(Char(BitXor("r".A, "r".B))) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || BitXor("r".B, "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char(BitXor("r".A, "r".B))),
	Coalesce("r".S, '') || RTrim(Char(-"r".A)),
	RTrim(Char(-"r".A)) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || RTrim(Char(BITNOT("r".A))),
	RTrim(Char(BITNOT("r".A))) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || '-5',
	'-5' || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || RTrim(Char("r".A + "r".B))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	RTrim(Char("r".A + "r".B)) || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || ',' || "r".B + "r".C || ',' || "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char("r".A + "r".B))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || RTrim(Char("r".A - "r".B))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	RTrim(Char("r".A - "r".B)) || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || ',' || "r".B - "r".C || ',' || "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char("r".A - "r".B))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || RTrim(Char("r".A * "r".B))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	RTrim(Char("r".A * "r".B)) || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || ',' || "r".B * "r".C || ',' || "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char("r".A * "r".B))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || RTrim(Char("r".A / "r".B))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	RTrim(Char("r".A / "r".B)) || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || ',' || "r".B / "r".C || ',' || "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char("r".A / "r".B))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || RTrim(Char(Mod("r".A, "r".B)))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	RTrim(Char(Mod("r".A, "r".B))) || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || ',' || Mod("r".B, "r".C) || ',' || "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char(Mod("r".A, "r".B)))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || RTrim(Char(BitAnd("r".A, "r".B)))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	RTrim(Char(BitAnd("r".A, "r".B))) || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || ',' || BitAnd("r".B, "r".C) || ',' || "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char(BitAnd("r".A, "r".B)))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || RTrim(Char(BitOr("r".A, "r".B)))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	RTrim(Char(BitOr("r".A, "r".B))) || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || ',' || BitOr("r".B, "r".C) || ',' || "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char(BitOr("r".A, "r".B)))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || RTrim(Char(BitXor("r".A, "r".B)))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	RTrim(Char(BitXor("r".A, "r".B))) || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || ',' || BitXor("r".B, "r".C) || ',' || "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char(BitXor("r".A, "r".B)))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || RTrim(Char(-"r".A))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	RTrim(Char(-"r".A)) || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || RTrim(Char(BITNOT("r".A)))
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	RTrim(Char(BITNOT("r".A))) || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || '-5'
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	'-5' || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || '-5',
	'-5' || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- cell Concat/Concat(s,Add(a,b)): green
-- cell Concat/Concat(Add(a,b),s): green
-- cell Concat/Join(s,Add(b,c),c): error
-- cell Concat/Concat(s,Concat(s,Add(a,b))): green
-- cell Concat/Concat(s,Sub(a,b)): green
-- cell Concat/Concat(Sub(a,b),s): green
-- cell Concat/Join(s,Sub(b,c),c): error
-- cell Concat/Concat(s,Concat(s,Sub(a,b))): green
-- cell Concat/Concat(s,Mul(a,b)): green
-- cell Concat/Concat(Mul(a,b),s): green
-- cell Concat/Join(s,Mul(b,c),c): error
-- cell Concat/Concat(s,Concat(s,Mul(a,b))): green
-- cell Concat/Concat(s,Div(a,b)): green
-- cell Concat/Concat(Div(a,b),s): green
-- cell Concat/Join(s,Div(b,c),c): error
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
