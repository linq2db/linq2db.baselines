-- Oracle.11.Managed Oracle11
SELECT
	grp."SiteID",
	COUNT(*),
	COUNT(CASE
		WHEN grp."Active" = 0 THEN 1
		ELSE NULL
	END)
FROM
	"GroupByActiveFlagTable" grp
GROUP BY
	grp."SiteID"

