BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p],
	(
		SELECT 1 AS "value" FROM Person
	) [s]([value])
WHERE
	[s].[value] = 1

