BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([a_Patient].[PersonID] IS NOT NULL, True, False)
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON ([p].[PersonID] = [a_Patient].[PersonID])

