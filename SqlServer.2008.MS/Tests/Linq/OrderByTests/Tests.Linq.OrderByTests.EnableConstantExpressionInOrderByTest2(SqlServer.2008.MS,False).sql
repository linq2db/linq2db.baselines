BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[PersonID],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (1, 3)
ORDER BY
	[p].[LastName] DESC

