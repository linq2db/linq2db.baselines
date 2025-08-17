BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	grp.SiteID,
	COUNT(*),
	COUNT(CASE
		WHEN NOT grp.Active THEN 1
		ELSE NULL
	END)
FROM
	Issue1078Table grp
GROUP BY
	grp.SiteID

