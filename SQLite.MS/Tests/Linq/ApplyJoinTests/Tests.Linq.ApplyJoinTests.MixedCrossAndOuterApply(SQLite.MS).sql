-- SQLite.MS SQLite

SELECT
	[p].[ParentID],
	[c_1].[ChildID],
	CASE
		WHEN [pat].[PersonID] IS NULL THEN NULL
		ELSE [pat].[Diagnosis]
	END
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [c_1].[ParentID] = [p].[ParentID]
		LEFT JOIN [Patient] [pat] ON [pat].[PersonID] = [p].[ParentID]

-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

