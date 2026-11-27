-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(CASE
		WHEN NOT [grp].[Active] THEN 1
		ELSE NULL
	END)
FROM
	[GroupByActiveFlagTable] [grp]
GROUP BY
	[grp].[SiteID]

