﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	[x].[StringValue] LIKE '%Str%' AND [x].[StringValue] IS NOT NULL

