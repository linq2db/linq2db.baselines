BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	grp."SiteID",
	COUNT(*),
	COUNT(CASE
		WHEN grp."Active" = 0 THEN 1
		ELSE NULL
	END)
FROM
	"Issue1078Table" grp
GROUP BY
	grp."SiteID"

