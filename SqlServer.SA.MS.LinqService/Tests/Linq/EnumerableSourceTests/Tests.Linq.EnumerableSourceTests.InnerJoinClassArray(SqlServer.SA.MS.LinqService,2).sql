BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(N'Janet'), (N'Doe')
		) [n]([Name]) ON [p].[LastName] = [n].[Name]

