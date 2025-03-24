BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		CROSS APPLY (VALUES
			(1,N'Janet',[p].[LastName]), (1,N'Doe',[p].[LastName])
		) [n]([ID], [Name], [Sub])
WHERE
	[p].[LastName] = [n].[Name]

