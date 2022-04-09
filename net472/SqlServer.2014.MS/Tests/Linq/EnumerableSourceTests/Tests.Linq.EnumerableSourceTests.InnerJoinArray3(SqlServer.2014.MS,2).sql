BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014

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

