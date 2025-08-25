BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	(VALUES
		(N'Janet'), (N'Doe'), (N'John'), (N'Doe')
	) [n]([item])
		INNER JOIN [Person] [p] ON [n].[item] = [p].[LastName]

