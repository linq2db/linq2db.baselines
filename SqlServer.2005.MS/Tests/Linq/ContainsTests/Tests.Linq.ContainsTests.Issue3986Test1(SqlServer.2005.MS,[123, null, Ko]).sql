-- SqlServer.2005.MS SqlServer.2005

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[PersonID] = 3 AND ([r].[MiddleName] IN (N'123', N'Ko') OR [r].[MiddleName] IS NULL)

