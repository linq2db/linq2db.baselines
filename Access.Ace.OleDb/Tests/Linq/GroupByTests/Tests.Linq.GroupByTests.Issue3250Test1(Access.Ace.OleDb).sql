BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	(CStr(COUNT(*)) + ' items have not been processed, e.g. #' + CStr(MIN([g_1].[PersonID]))) + '.'
FROM
	[Person] [g_1]
WHERE
	[g_1].[LastName] <> 'ERROR' AND COUNT(*) > 0

