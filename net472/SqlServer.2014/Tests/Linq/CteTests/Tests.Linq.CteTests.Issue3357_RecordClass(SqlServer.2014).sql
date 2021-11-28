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
-- SqlServer.2014 SqlServer.2012

WITH [cte] ([Id], [FirstName], [LastName])
AS
(
	SELECT
		[p].[PersonID],
		Cast([p].[FirstName] as NVarChar(Max)),
		Cast([p].[LastName] as NVarChar(Max))
	FROM
		[Person] [p]
	UNION ALL
	SELECT
		[r].[PersonID],
		Cast([r].[FirstName] as NVarChar(Max)),
		Cast([r].[LastName] as NVarChar(Max))
	FROM
		[cte] [p_1]
			INNER JOIN [Person] [r] ON [p_1].[FirstName] = [r].[LastName]
)
SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName]
FROM
	[cte] [t1]

