BeforeExecute
-- SqlServer.2017

WITH [cte] ([FirstName], [LastName])
AS
(
	SELECT
		[p].[FirstName],
		[p].[LastName]
	FROM
		[Person] [p]
	UNION ALL
	SELECT
		[p_1].[FirstName],
		[p_1].[LastName]
	FROM
		[cte] [p_1]
			INNER JOIN [Doctor] [d] ON ([p_1].[FirstName] = [d].[Taxonomy] OR [p_1].[FirstName] IS NULL AND [d].[Taxonomy] IS NULL)
	UNION ALL
	SELECT
		[p_2].[FirstName],
		[p_2].[LastName]
	FROM
		[cte] [p_2]
			INNER JOIN [Patient] [pat] ON ([p_2].[FirstName] = [pat].[Diagnosis] OR [p_2].[FirstName] IS NULL AND [pat].[Diagnosis] IS NULL)
)
SELECT
	[t1].[FirstName],
	[t1].[LastName]
FROM
	[cte] [t1]

