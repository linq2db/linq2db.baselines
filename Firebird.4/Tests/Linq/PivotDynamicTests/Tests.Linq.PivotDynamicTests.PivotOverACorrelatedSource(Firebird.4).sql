-- Firebird.4 Firebird4
SELECT
	"c_1"."Id",
	"r_1"."Key_1",
	"r_1".Y2010
FROM
	"CategorySales" "c_1"
		CROSS JOIN LATERAL (
			SELECT
				SUM(CASE
					WHEN "r"."Year" = 2010 THEN "r"."Amount"
					ELSE NULL
				END) as Y2010,
				"r"."Category" as "Key_1"
			FROM
				"CategorySales" "r"
			WHERE
				"r"."Category" = "c_1"."Category" OR "r"."Category" IS NULL AND "c_1"."Category" IS NULL
			GROUP BY
				"r"."Category"
		) "r_1"

