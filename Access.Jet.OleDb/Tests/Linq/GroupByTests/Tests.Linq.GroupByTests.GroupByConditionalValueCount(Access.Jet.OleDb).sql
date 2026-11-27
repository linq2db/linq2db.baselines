-- Access.Jet.OleDb AccessOleDb
SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(IIF(NOT [grp].[Active], 1, NULL))
FROM
	[GroupByActiveFlagTable] [grp]
GROUP BY
	[grp].[SiteID]

