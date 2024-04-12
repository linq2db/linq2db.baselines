BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[FirstName],
	COUNT(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

