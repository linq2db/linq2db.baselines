BeforeExecute
-- Access AccessOleDb

SELECT
	[_].[PersonID],
	[_].[LastName],
	IIF([_].[PersonID] IN (1, 3), True, False)
FROM
	[Person] [_]
ORDER BY
	IIF([_].[PersonID] IN (1, 3), True, False)

