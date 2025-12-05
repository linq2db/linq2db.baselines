-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123n456' LIKE '%n%'

-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123n456' NOT LIKE '%n%'

