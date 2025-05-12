BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Replace([p].[FirstName], N'hn', N'lie') = N'Jolie' AND
	[p].[PersonID] = 1

