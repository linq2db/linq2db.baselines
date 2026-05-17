-- SQLite.Classic SQLite

SELECT
	[pmp1].[ChildID]
FROM
	[Child] [pmp1]
		CROSS JOIN (
			SELECT DISTINCT
				[pmp].[ParentID]
			FROM
				[Child] [pmp]
		) [pmp_1]

-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

