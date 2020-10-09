BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[n].[c1], 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	( 
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
	) [n]
		INNER JOIN [Person] [p] ON [n].[c1] = [p].[LastName]

