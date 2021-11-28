BeforeExecute
-- SqlServer.2019 SqlServer.2017

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

