-- SqlCe

SELECT
	[grp].[SiteID] as [Key_1],
	COUNT(*) as [Total],
	COUNT(CASE
		WHEN [grp].[Active] = 0 THEN 1
		ELSE NULL
	END) as [Inactive]
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

