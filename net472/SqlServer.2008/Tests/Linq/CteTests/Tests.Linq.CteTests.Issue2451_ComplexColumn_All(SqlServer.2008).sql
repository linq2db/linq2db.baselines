BeforeExecute
-- SqlServer.2008

WITH [cte] ([FirstName])
AS
(
	SELECT
		Cast([p].[FirstName] as NVarChar(Max))
	FROM
		[Person] [p]
	UNION ALL
	SELECT
		Cast(([r].[FirstName] + N'/' + [r].[LastName]) as NVarChar(Max))
	FROM
		[cte] [p_1]
			INNER JOIN [Person] [r] ON [p_1].[FirstName] = [r].[LastName]
)
SELECT
	[t1].[FirstName]
FROM
	[cte] [t1]

