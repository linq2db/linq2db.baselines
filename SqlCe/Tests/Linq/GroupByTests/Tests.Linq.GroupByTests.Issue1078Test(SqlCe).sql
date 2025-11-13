-- SqlCe

SELECT
	[grp].[SiteID] as [Key_1],
	COUNT(*) as [Count_1],
	COUNT(CASE
		WHEN [grp].[Active] = 0 THEN 1
		ELSE NULL
	END) as [Count_2]
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

