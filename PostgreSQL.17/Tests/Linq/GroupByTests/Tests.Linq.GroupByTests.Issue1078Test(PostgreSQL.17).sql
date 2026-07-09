-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	grp."SiteID",
	COUNT(*),
	COUNT(*) FILTER (WHERE NOT grp."Active")
FROM
	"Issue1078Table" grp
GROUP BY
	grp."SiteID"

