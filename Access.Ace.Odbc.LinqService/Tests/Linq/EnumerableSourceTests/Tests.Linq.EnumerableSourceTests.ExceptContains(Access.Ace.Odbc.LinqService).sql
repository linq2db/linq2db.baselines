BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([r].[PersonID] IN (1, 2, 3), True, False)
FROM
	[Person] [r]

