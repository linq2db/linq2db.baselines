BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT /* qb */
	[t].[PersonID],
	[t].[Diagnosis]
FROM
	[Parent] [t1]
		CROSS JOIN [Child] [c_1] NOT INDEXED
		INNER JOIN [Patient] [t] ON [c_1].[ParentID] = [t].[PersonID]

