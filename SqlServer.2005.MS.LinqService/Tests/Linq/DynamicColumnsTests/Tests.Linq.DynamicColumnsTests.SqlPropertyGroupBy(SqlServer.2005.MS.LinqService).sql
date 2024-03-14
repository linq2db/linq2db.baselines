BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[FirstName],
	Count(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

