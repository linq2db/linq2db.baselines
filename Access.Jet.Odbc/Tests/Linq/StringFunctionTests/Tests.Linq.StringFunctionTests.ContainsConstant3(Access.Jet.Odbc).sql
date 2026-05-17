-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN ('oh', 'oh''', 'oh\')

