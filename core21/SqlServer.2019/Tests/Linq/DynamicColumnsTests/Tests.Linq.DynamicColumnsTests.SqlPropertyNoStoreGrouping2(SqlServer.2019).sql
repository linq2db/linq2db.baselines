BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[t1].[FirstName], 
	[t1].[LastName], 
	Count(*)
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName],
	[t1].[LastName]
ORDER BY
	[t1].[FirstName]

