﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[a_Table2].[ID],
	[a_Table2].[ID3],
	[a_Table3].[ID]
FROM
	([Table1] [r]
		LEFT JOIN [Table2] [a_Table2] ON ([r].[ID2] = [a_Table2].[ID]))
		LEFT JOIN [Table3] [a_Table3] ON ([a_Table2].[ID3] = [a_Table3].[ID])
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Table4] [id]
		WHERE
			[a_Table3].[ID] IS NOT NULL AND ([a_Table3].[ID] = [id].[ID3] OR [a_Table3].[ID] IS NULL AND [id].[ID3] IS NULL) AND
			[id].[ID] = [r].[ID]
	)

