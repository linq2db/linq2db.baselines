BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	(CStr(COUNT(*)) + ' items have not been processed, e.g. #' + CStr(MIN([s_1].[ID]))) + '.'
FROM
	(
		SELECT
			[s].[PersonID] as [ID]
		FROM
			[Person] [s]
		WHERE
			[s].[LastName] <> 'ERROR'
		HAVING
			COUNT(*) > 0
	) [s_1]

