BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(N'Janet'), (N'Doe'), (N'John'), (N'Doe')
		) [n]([item]) ON [p].[LastName] = [n].[item]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(N'Janet'), (N'Doe'), (N'John'), (N'Doe1')
		) [n]([item]) ON [p].[LastName] = [n].[item]

