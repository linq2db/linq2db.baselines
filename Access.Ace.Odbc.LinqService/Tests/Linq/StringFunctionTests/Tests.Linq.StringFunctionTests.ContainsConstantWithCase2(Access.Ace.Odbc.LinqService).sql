BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%Joh%' AND [p].[PersonID] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%Joh%' AND [p].[PersonID] = 1

