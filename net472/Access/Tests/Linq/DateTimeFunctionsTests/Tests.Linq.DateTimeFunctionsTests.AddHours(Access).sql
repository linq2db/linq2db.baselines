﻿BeforeExecute
-- Access AccessOleDb

SELECT
	DatePart('h', DateAdd('h', 22, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

