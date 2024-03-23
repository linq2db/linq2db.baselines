BeforeExecute
-- Access AccessOleDb

SELECT
	IIF([p].[PersonID] = 1, True, False)
FROM
	[Person] [p]

