BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t1].[FirstName],
	Count(*)
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName]

