-- DB2 DB2.LUW DB2LUW
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

