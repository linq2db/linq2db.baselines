﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @false_value VarChar(1) -- AnsiString
SET     @false_value = 'N'

SELECT
	[t].[Id],
	[t].[Value1],
	[t].[Value2],
	[t].[BoolValue]
FROM
	[ValueConversion] [t]
WHERE
	[t].[BoolValue] = @false_value

