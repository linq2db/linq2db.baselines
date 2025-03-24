BeforeExecute
--  SqlServer.2012.MS SqlServer.2012

SELECT
	(CAST(COUNT(*) AS VarChar(11)) + N' items have not been processed, e.g. #' + CAST(MIN([s].[PersonID]) AS VarChar(11))) + N'.'
FROM
	[Person] [s]
WHERE
	[s].[LastName] <> N'ERROR'
HAVING
	COUNT(*) > 0

