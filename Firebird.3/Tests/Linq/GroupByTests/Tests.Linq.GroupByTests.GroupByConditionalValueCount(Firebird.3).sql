-- Firebird.3 Firebird3
SELECT
	"grp"."SiteID",
	COUNT(*),
	COUNT(CASE
		WHEN NOT "grp"."Active" THEN 1
		ELSE NULL
	END)
FROM
	"GroupByActiveFlagTable" "grp"
GROUP BY
	"grp"."SiteID"

