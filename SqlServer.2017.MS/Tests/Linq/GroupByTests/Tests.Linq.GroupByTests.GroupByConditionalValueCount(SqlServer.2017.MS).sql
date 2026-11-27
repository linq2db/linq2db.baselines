-- SqlServer.2017.MS SqlServer.2017
SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(IIF([grp].[Active] = 0, 1, NULL))
FROM
	[GroupByActiveFlagTable] [grp]
GROUP BY
	[grp].[SiteID]

