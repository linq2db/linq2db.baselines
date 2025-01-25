BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	(CStr(COUNT(*)) + ' items have not been processed, e.g. #' + IIF(MIN([g_1].[PersonID]) IS NOT NULL, CStr(MIN([g_1].[PersonID])), NULL)) + '.'
FROM
	[Person] [g_1]
WHERE
	[g_1].[LastName] <> 'ERROR'
HAVING
	COUNT(*) > 0

