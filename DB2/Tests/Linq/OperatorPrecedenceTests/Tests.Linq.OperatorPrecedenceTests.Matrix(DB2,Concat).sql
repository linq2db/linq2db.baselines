-- DB2 DB2.LUW DB2LUW
SELECT
	Coalesce("r".S, '') || RTrim(Char("r".A + "r".B)),
	RTrim(Char("r".A + "r".B)) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || ("r".B + "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char("r".A + "r".B)),
	Coalesce("r".S, '') || ',' || -("r".B + "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || ',' || BITNOT("r".B + "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || RTrim(Char("r".A - "r".B)),
	RTrim(Char("r".A - "r".B)) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || ("r".B - "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char("r".A - "r".B)),
	Coalesce("r".S, '') || ',' || -("r".B - "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || ',' || BITNOT("r".B - "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || RTrim(Char("r".A * "r".B)),
	RTrim(Char("r".A * "r".B)) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || ("r".B * "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char("r".A * "r".B)),
	Coalesce("r".S, '') || ',' || -("r".B * "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || ',' || BITNOT("r".B * "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || RTrim(Char("r".A / "r".B)),
	RTrim(Char("r".A / "r".B)) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || ("r".B / "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char("r".A / "r".B)),
	Coalesce("r".S, '') || ',' || -("r".B / "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || ',' || BITNOT("r".B / "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || RTrim(Char(Mod("r".A, "r".B))),
	RTrim(Char(Mod("r".A, "r".B))) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || Mod("r".B, "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char(Mod("r".A, "r".B))),
	Coalesce("r".S, '') || ',' || -Mod("r".B, "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || ',' || BITNOT(Mod("r".B, "r".C)) || ',' || "r".C,
	Coalesce("r".S, '') || RTrim(Char(BitAnd("r".A, "r".B))),
	RTrim(Char(BitAnd("r".A, "r".B))) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || BitAnd("r".B, "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char(BitAnd("r".A, "r".B))),
	Coalesce("r".S, '') || ',' || -BitAnd("r".B, "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || ',' || BITNOT(BitAnd("r".B, "r".C)) || ',' || "r".C,
	Coalesce("r".S, '') || RTrim(Char(BitOr("r".A, "r".B))),
	RTrim(Char(BitOr("r".A, "r".B))) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || BitOr("r".B, "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char(BitOr("r".A, "r".B))),
	Coalesce("r".S, '') || ',' || -BitOr("r".B, "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || ',' || BITNOT(BitOr("r".B, "r".C)) || ',' || "r".C,
	Coalesce("r".S, '') || RTrim(Char(BitXor("r".A, "r".B))),
	RTrim(Char(BitXor("r".A, "r".B))) || Coalesce("r".S, ''),
	Coalesce("r".S, '') || ',' || BitXor("r".B, "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || Coalesce("r".S, '') || RTrim(Char(BitXor("r".A, "r".B))),
	Coalesce("r".S, '') || ',' || -BitXor("r".B, "r".C) || ',' || "r".C,
	Coalesce("r".S, '') || ',' || BITNOT(BitXor("r".B, "r".C)) || ',' || "r".C,
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
	Coalesce("r".S, '') || '-5',
	'-5' || Coalesce("r".S, '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

