BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[_].[PersonID],
	[_].[LastName],
	IIF([_].[PersonID] IN (1, 3), 1, 0)
FROM
	[Person] [_]
ORDER BY
	IIF([_].[PersonID] IN (1, 3), 1, 0)

