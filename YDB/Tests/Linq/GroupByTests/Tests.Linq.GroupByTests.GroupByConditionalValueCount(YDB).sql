-- YDB Ydb
SELECT
	grp.SiteID as SiteID,
	COUNT(*) as Total,
	COUNT(CASE
		WHEN NOT grp.Active THEN 1
		ELSE NULL
	END) as Inactive
FROM
	GroupByActiveFlagTable grp
GROUP BY
	grp.SiteID

