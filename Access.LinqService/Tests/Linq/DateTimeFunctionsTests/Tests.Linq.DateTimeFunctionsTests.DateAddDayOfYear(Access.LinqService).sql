﻿BeforeExecute
-- Access AccessOleDb

SELECT
	DateValue(DateAdd('y', 3, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

