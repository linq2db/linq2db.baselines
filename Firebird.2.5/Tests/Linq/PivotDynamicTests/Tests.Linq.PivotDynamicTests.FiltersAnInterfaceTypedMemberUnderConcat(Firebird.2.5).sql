-- Firebird.2.5 Firebird
SELECT
	"r_1"."Category"
FROM
	(
		SELECT
			SUM(CASE
				WHEN "r"."Year" = 2010 THEN "r"."Amount"
				ELSE NULL
			END) as Y2010,
			"r"."Category"
		FROM
			"Sales" "r"
		GROUP BY
			"r"."Category"
		UNION ALL
		SELECT
			SUM(CASE
				WHEN "x"."Year" = 2010 THEN "x"."Amount"
				ELSE NULL
			END) as Y2010,
			"x"."Category"
		FROM
			"Sales" "x"
		GROUP BY
			"x"."Category"
	) "r_1"
WHERE
	"r_1".Y2010 > 16

