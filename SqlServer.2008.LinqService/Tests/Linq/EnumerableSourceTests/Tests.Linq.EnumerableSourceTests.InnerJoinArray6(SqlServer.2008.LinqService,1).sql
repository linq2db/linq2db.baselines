BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(N'Doe')
		) [n]([item]) ON [p].[LastName] = [n].[item]

