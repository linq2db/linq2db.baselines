-- DB2 DB2.LUW DB2LUW
SELECT
	CASE
		WHEN "r".A + "r".B = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < "r".A + "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A + "r".B BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN "r".B + "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A + "r".B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || RTrim(Char("r".A + "r".B)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A + "r".B <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A + "r".B IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM "r".A + "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN -"r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A - "r".B BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN "r".A - "r".B AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A + BITNOT("r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN "r".A + BITNOT("r".B) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A - "r".B = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < "r".A - "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A - "r".B BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN "r".B - "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A - "r".B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || RTrim(Char("r".A - "r".B)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A - "r".B <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A - "r".B IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM "r".A - "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN -"r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A + "r".B BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN "r".A + "r".B AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A - BITNOT("r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN "r".A - BITNOT("r".B) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A * "r".B = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < "r".A * "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A * "r".B BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN "r".B * "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A * "r".B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || RTrim(Char("r".A * "r".B)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A * "r".B <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A * "r".B IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM "r".A * "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN -"r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A * -"r".B BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN "r".A * -"r".B AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A * BITNOT("r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN "r".A * BITNOT("r".B) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A / "r".B = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < "r".A / "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A / "r".B BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN "r".B / "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A / "r".B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || RTrim(Char("r".A / "r".B)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A / "r".B <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A / "r".B IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM "r".A / "r".B THEN 1
		ELSE 0
	END,
	CASE
		WHEN -"r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A / -"r".B BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN "r".A / -"r".B AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod("r".A, "r".B) = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < Mod("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod("r".A, "r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN Mod("r".B, "r".C) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod("r".A, "r".B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || RTrim(Char(Mod("r".A, "r".B))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod("r".A, "r".B) <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod("r".A, "r".B) IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM Mod("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN -"r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod("r".A, -"r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN Mod("r".A, -"r".B) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod("r".A, BITNOT("r".B)) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN Mod("r".A, BITNOT("r".B)) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitAnd("r".A, "r".B) = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < BitAnd("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitAnd("r".A, "r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN BitAnd("r".B, "r".C) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitAnd("r".A, "r".B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || RTrim(Char(BitAnd("r".A, "r".B))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitAnd("r".A, "r".B) <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitAnd("r".A, "r".B) IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM BitAnd("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN -"r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitAnd("r".A, -"r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN BitAnd("r".A, -"r".B) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitAnd("r".A, BITNOT("r".B)) BETWEEN "r".C AND "r".A
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN BitAnd("r".A, BITNOT("r".B)) AND "r".A
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitOr("r".A, "r".B) = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < BitOr("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitOr("r".A, "r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN BitOr("r".B, "r".C) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitOr("r".A, "r".B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || RTrim(Char(BitOr("r".A, "r".B))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitOr("r".A, "r".B) <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitOr("r".A, "r".B) IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM BitOr("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN -"r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitOr("r".A, -"r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN BitOr("r".A, -"r".B) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitOr("r".A, BITNOT("r".B)) BETWEEN "r".C AND "r".A
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN BitOr("r".A, BITNOT("r".B)) AND "r".A
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitXor("r".A, "r".B) = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C < BitXor("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitXor("r".A, "r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".A BETWEEN BitXor("r".B, "r".C) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitXor("r".A, "r".B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce("r".S, '') || RTrim(Char(BitXor("r".A, "r".B))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitXor("r".A, "r".B) <= "r".C AND "r".B < "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitXor("r".A, "r".B) IS DISTINCT FROM "r".N THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS DISTINCT FROM BitXor("r".A, "r".B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN -"r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitXor("r".A, -"r".B) BETWEEN "r".C AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN BitXor("r".A, -"r".B) AND "r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitXor("r".A, BITNOT("r".B)) BETWEEN "r".C AND "r".A
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C BETWEEN BitXor("r".A, BITNOT("r".B)) AND "r".A
			THEN 1
		ELSE 0
	END,
	"r".A * -"r".B + "r".C,
	"r".A * BITNOT("r".B) + "r".C,
	"r".A * -"r".B - "r".C,
	"r".A * BITNOT("r".B) - "r".C,
	("r".A * -"r".B) * "r".C,
	("r".A * BITNOT("r".B)) * "r".C,
	"r".A * -"r".B + "r".C,
	"r".A * BITNOT("r".B) + "r".C,
	CASE
		WHEN -"r".A = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C = -"r".A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BITNOT("r".A) = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C = BITNOT("r".A) THEN 1
		ELSE 0
	END,
	CASE
		WHEN -5 = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C = -5 THEN 1
		ELSE 0
	END
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	CASE
		WHEN -5 = "r".C THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r".C = -5 THEN 1
		ELSE 0
	END
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

