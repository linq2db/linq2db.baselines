-- SqlCe

SELECT
	[grp].[SiteID],
	COUNT(*) as [Total],
	COUNT(CASE
		WHEN [grp].[Active] = 0 THEN 1
		ELSE NULL
	END) as [Inactive]
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

