BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[FirstName],
	Count(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

