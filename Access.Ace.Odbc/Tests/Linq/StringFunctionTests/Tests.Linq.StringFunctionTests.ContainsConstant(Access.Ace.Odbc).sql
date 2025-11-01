-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%jOh%' AND [p].[PersonID] = 1

-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%jOh%' AND [p].[PersonID] = 1

