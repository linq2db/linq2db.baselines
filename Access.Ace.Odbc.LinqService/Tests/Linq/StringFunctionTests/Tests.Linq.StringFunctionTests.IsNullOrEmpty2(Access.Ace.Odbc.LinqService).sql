BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	IIF(Len([p].[FirstName]) = 0, True, False)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

