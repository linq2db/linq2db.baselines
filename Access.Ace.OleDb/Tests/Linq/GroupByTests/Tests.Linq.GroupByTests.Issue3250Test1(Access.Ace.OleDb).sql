-- Access.Ace.OleDb AccessOleDb

SELECT
	(CStr([g_2].[Message]) + ' items have not been processed, e.g. #' + IIF([g_2].[Message_1] IS NULL, '', IIF([g_2].[Message_1] IS NOT NULL, CStr([g_2].[Message_1]), NULL))) + '.'
FROM
	(
		SELECT
			COUNT(*) as [Message],
			MIN([g_1].[PersonID]) as [Message_1]
		FROM
			[Person] [g_1]
		WHERE
			[g_1].[LastName] <> 'ERROR'
	) [g_2]
WHERE
	[g_2].[Message] > 0

