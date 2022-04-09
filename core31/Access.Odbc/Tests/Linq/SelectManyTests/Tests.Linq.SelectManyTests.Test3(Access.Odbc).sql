BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	(
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p],
			[Person] [t]
	) [cross_1]
		INNER JOIN [GrandChild] [g_1] ON ([cross_1].[ParentID] = [g_1].[ParentID])

