-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	(CAST(COUNT(*) AS NVarChar(11)) + N' items have not been processed, e.g. #' + Coalesce(CAST(MIN([s].[PersonID]) AS NVarChar(11)), N'')) + N'.'
FROM
	[Person] [s]
WHERE
	[s].[LastName] <> N'ERROR'
HAVING
	COUNT(*) > 0

