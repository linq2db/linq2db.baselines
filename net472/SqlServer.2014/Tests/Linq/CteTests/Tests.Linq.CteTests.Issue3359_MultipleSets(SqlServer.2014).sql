BeforeExecute
-- SqlServer.2014 SqlServer.2012

WITH [cte] ([FirstName], [LastName])
AS
(
	SELECT
		Cast([p].[FirstName] as NVarChar(Max)),
		Cast([p].[LastName] as NVarChar(Max))
	FROM
		[Person] [p]
	UNION ALL
	SELECT
		Cast([p_1].[FirstName] as NVarChar(Max)),
		Cast([p_1].[LastName] as NVarChar(Max))
	FROM
		[cte] [p_1]
			INNER JOIN [Doctor] [d] ON ([p_1].[FirstName] = [d].[Taxonomy] OR [p_1].[FirstName] IS NULL AND [d].[Taxonomy] IS NULL)
	UNION ALL
	SELECT
		Cast([p_2].[FirstName] as NVarChar(Max)),
		Cast([p_2].[LastName] as NVarChar(Max))
	FROM
		[cte] [p_2]
			INNER JOIN [Patient] [pat] ON ([p_2].[FirstName] = [pat].[Diagnosis] OR [p_2].[FirstName] IS NULL AND [pat].[Diagnosis] IS NULL)
)
SELECT
	[t1].[FirstName],
	[t1].[LastName]
FROM
	[cte] [t1]

