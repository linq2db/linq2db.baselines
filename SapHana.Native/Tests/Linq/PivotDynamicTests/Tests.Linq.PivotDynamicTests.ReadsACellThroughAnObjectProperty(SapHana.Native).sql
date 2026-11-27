-- SapHana.Native SapHana
SELECT
	SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END)
FROM
	"Sales" "r"
GROUP BY
	"r"."Category"

-- SapHana.Native SapHana
SELECT
	SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END)
FROM
	"Sales" "r"
GROUP BY
	"r"."Category"

-- SapHana.Native SapHana
SELECT
	CAST(SUM(CASE
		WHEN "r"."Year" = 2010 THEN "r"."Amount"
		ELSE NULL
	END) AS Integer)
FROM
	"Sales" "r"
GROUP BY
	"r"."Category"

