-- SqlServer.2016.MS SqlServer.2016
SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(IIF([grp].[Active] = 0, 1, NULL))
FROM
	[GroupByActiveFlagTable] [grp]
GROUP BY
	[grp].[SiteID]

