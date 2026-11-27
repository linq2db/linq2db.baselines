-- Firebird.2.5 Firebird
SELECT
	SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END)
FROM
	"Sales" "r"
GROUP BY
	"r"."Category"

-- Firebird.2.5 Firebird
SELECT
	SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END)
FROM
	"Sales" "r"
GROUP BY
	"r"."Category"

-- Firebird.2.5 Firebird
SELECT
	CAST(Floor(SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END)) AS Int)
FROM
	"Sales" "r"
GROUP BY
	"r"."Category"

