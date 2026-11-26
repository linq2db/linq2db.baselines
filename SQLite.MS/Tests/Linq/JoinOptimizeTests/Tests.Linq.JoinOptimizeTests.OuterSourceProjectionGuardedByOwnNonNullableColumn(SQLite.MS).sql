-- SQLite.MS SQLite
SELECT
	[p].[ParentID],
	CASE
		WHEN [v].[PersonID] IS NOT NULL THEN [p].[Value1]
		ELSE NULL
	END
FROM
	[Parent] [p]
		LEFT JOIN [Person] [v] ON [v].[PersonID] = [p].[ParentID]

-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.MS SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

