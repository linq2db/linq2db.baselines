BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		CROSS APPLY (VALUES
			(1,N'Janet',[p].[FirstName]), (2,N'Doe',NULL)
		) [n]([PersonID], [LastName], [FirstName])
WHERE
	[p].[LastName] = [n].[LastName]

