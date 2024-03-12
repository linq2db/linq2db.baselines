BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[FirstName],
	Count(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

