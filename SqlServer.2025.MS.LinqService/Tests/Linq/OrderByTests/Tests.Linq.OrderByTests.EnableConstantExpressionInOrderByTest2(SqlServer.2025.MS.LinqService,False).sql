BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[p].[PersonID],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (1, 3)
ORDER BY
	[p].[LastName] DESC

