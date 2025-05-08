BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		LEFT JOIN (VALUES
			(N'Janet'), (N'Doe')
		) [n]([LastName]) ON [p].[LastName] = [n].[LastName]

