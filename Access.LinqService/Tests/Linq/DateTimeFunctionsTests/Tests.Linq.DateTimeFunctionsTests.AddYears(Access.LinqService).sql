﻿BeforeExecute
-- Access AccessOleDb

SELECT
	DateValue(DateAdd('yyyy', 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

