BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[FirstName],
	COUNT(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

