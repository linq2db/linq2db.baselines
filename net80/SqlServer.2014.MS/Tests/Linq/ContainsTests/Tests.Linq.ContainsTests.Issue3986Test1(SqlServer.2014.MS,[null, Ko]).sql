BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[PersonID] = 3 AND ([r].[MiddleName] IN (N'Ko') OR [r].[MiddleName] IS NULL)

