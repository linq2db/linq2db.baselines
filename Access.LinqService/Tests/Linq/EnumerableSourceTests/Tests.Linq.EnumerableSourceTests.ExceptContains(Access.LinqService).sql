BeforeExecute
-- Access AccessOleDb

SELECT
	IIF([r].[PersonID] IN (1, 2, 3), True, False)
FROM
	[Person] [r]

