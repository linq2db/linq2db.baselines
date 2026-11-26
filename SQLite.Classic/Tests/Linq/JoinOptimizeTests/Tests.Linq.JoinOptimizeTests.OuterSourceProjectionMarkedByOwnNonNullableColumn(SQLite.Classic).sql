-- SQLite.Classic SQLite
SELECT
	[p].[ParentID],
	[v].[PersonID]
FROM
	[Parent] [p]
		LEFT JOIN [Person] [v] ON [v].[PersonID] = [p].[ParentID]

-- SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

