BeforeExecute
-- SqlCe

SELECT
	[grp].[SiteID] as [Key_1],
	COUNT(*) as [COUNT_1],
	COUNT(CASE
		WHEN [grp].[Active] = 0 THEN 1
		ELSE NULL
	END) as [COUNT_2]
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

