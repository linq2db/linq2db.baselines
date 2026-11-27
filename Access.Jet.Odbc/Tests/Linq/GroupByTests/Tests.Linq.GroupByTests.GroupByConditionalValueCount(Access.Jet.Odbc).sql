-- Access.Jet.Odbc AccessODBC
SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(IIF(NOT [grp].[Active], 1, NULL))
FROM
	[GroupByActiveFlagTable] [grp]
GROUP BY
	[grp].[SiteID]

