BeforeExecute
-- SQLite.MS SQLite

WITH [cte] ([FirstName])
AS
(
	SELECT
		[p].[FirstName]
	FROM
		[Person] [p]
	UNION ALL
	SELECT
		[r].[FirstName] || '/' || [r].[LastName]
	FROM
		[cte] [p_1]
			INNER JOIN [Person] [r] ON [p_1].[FirstName] = [r].[LastName]
)
SELECT
	[t1].[FirstName]
FROM
	[cte] [t1]

