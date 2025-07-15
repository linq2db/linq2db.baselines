BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[FirstName],
	COUNT(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

