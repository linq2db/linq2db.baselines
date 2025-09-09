BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	[y].[item]
FROM
	[Person] [x]
		CROSS JOIN (VALUES
			(N'M'), (N'F'), (N'U'), (N'O')
		) [y]([item])

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

