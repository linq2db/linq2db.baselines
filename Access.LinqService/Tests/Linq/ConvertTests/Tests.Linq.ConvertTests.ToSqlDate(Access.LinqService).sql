﻿BeforeExecute
-- Access AccessOleDb

SELECT
	DateValue(CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-01-01')
FROM
	[LinqDataTypes] [t]

