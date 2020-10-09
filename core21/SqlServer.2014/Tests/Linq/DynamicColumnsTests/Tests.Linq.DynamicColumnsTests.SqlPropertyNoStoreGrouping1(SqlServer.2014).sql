BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[t1].[FirstName], 
	Count(*)
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName]
ORDER BY
	[t1].[FirstName]

