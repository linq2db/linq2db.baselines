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
				N'Doe' as [Item]
		) [n] ON [p].[LastName] = [n].[Item]

