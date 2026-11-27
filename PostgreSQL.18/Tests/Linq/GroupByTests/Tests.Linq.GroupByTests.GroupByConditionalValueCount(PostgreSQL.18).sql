-- PostgreSQL.18 PostgreSQL12
SELECT
	grp."SiteID",
	COUNT(*),
	COUNT(*) FILTER (WHERE NOT grp."Active")
FROM
	"GroupByActiveFlagTable" grp
GROUP BY
	grp."SiteID"

