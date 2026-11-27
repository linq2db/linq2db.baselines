-- PostgreSQL.11 PostgreSQL
SELECT
	grp."SiteID",
	COUNT(*),
	COUNT(*) FILTER (WHERE NOT grp."Active")
FROM
	"GroupByActiveFlagTable" grp
GROUP BY
	grp."SiteID"

