﻿BeforeExecute
-- Access AccessOleDb

SELECT 
	DateAdd('n', [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

