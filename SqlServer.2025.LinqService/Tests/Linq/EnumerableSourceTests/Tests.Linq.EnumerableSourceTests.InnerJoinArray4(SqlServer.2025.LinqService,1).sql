BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

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
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(N'Janet'), (N'Doe1'), (N'John'), (N'Doe')
		) [n]([item]) ON [p].[LastName] = [n].[item]

