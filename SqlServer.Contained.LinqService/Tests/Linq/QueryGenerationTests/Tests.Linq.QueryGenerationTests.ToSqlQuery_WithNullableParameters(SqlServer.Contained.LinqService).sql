BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[MiddleName] IS NOT NULL

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT TOP (2)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[MiddleName] IS NOT NULL

