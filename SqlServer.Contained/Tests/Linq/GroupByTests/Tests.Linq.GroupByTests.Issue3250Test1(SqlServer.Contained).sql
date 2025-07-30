BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	(CAST(COUNT(*) AS NVarChar(11)) + N' items have not been processed, e.g. #' + Coalesce(CAST(MIN([g_1].[PersonID]) AS NVarChar(11)), N'')) + N'.'
FROM
	[Person] [g_1]
WHERE
	[g_1].[LastName] <> N'ERROR'
HAVING
	COUNT(*) > 0

