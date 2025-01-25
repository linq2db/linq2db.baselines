BeforeExecute
-- SqlServer.2016

WITH [cte] ([Id], [FirstName], [LastName])
AS
(
	SELECT
		[p].[PersonID],
		[p].[FirstName],
		[p].[LastName]
	FROM
		[Person] [p]
	UNION ALL
	SELECT
		[r].[PersonID],
		[r].[FirstName],
		[r].[LastName]
	FROM
		[cte] [t1]
			INNER JOIN [Person] [r] ON [t1].[FirstName] = [r].[LastName]
)
SELECT
	[t2].[Id],
	[t2].[FirstName],
	[t2].[LastName]
FROM
	[cte] [t2]

