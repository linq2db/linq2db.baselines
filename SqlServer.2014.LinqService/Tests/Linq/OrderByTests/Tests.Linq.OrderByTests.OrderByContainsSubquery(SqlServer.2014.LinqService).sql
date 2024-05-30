BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[PersonID],
	[t1].[LastName],
	IIF([t1].[PersonID] IN (1, 3), 1, 0)
FROM
	[Person] [t1]
ORDER BY
	IIF([t1].[PersonID] IN (1, 3), 1, 0)

