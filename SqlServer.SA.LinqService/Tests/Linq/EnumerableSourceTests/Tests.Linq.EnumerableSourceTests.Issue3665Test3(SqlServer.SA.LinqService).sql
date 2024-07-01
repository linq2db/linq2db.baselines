BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[x].[PersonID] + [y].[item]
FROM
	[Person] [x]
		CROSS JOIN (VALUES
			(1), (3)
		) [y]([item])

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

