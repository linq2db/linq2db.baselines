﻿BeforeExecute
-- Access AccessOleDb

SELECT
	DatePart('s', DateAdd('s', -35, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

