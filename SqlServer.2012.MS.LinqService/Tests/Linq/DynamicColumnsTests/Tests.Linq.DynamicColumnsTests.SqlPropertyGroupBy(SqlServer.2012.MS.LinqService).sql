BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[FirstName],
	Count(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

