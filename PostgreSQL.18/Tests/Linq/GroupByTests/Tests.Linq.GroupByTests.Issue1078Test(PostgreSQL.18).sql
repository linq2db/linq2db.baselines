-- PostgreSQL.18 PostgreSQL

SELECT
	grp."SiteID",
	COUNT(*),
	COUNT(*) FILTER (WHERE NOT grp."Active")
FROM
	"Issue1078Table" grp
GROUP BY
	grp."SiteID"

