-- Oracle.19.Managed Oracle.Managed Oracle12
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

