-- Firebird.2.5 Firebird
SELECT
	"grp"."SiteID",
	COUNT(*),
	COUNT(CASE
		WHEN "grp"."Active" <> '1' THEN 1
		ELSE NULL
	END)
FROM
	"GroupByActiveFlagTable" "grp"
GROUP BY
	"grp"."SiteID"

