BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[p].[PersonID],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (1, 3)
ORDER BY
	1 DESC,
	[p].[LastName] DESC

