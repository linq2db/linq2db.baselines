BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	NOT ([nm].[MiddleName] IS NULL OR LEN([nm].[MiddleName] + N'.') = 1 AND [nm].[MiddleName] IS NOT NULL)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

