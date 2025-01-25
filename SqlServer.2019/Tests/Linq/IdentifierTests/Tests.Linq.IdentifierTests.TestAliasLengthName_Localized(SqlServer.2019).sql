BeforeExecute
-- SqlServer.2019

SELECT
	[z].[FirstName],
	[z].[PersonID],
	[z].[LastName],
	[z].[MiddleName],
	[z].[Gender]
FROM
	[Person] [z]
WHERE
	[z].[PersonID] = 1

