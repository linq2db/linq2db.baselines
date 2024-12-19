BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE '%Joh%' OR InStr(1, [p].[FirstName], 'Joh', 0) < 1) AND
	[p].[PersonID] = 1

