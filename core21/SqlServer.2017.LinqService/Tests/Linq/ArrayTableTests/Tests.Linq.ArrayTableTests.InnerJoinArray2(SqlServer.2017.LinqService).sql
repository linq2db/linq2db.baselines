BeforeExecute
-- SqlServer.2017

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN ( 
			SELECT 
				N'Janet' as [c1]
			UNION ALL
			SELECT 
				N'Doe' as [c1]
			UNION ALL
			SELECT 
				N'John' as [c1]
			UNION ALL
			SELECT 
				N'Doe' as [c1]
		) [t1] ON [p].[LastName] = [t1].[c1]

