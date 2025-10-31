-- Access.Jet.Odbc AccessODBC

SELECT
	(CStr(COUNT(*)) + ' items have not been processed, e.g. #' + CStr(MIN([s].[PersonID]))) + '.'
FROM
	[Person] [s]
WHERE
	[s].[LastName] <> 'ERROR'
HAVING
	COUNT(*) > 0

