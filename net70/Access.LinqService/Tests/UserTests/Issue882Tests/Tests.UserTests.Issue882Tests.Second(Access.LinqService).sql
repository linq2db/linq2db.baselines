﻿BeforeExecute
-- Access AccessOleDb

SELECT
	DatePart('s', [t].[DateTimeValue]) MOD 7
FROM
	[LinqDataTypes] [t]

