﻿BeforeExecute
-- Access AccessOleDb

SELECT
	CDate(CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-10-1 20:35:44')
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('m', CDate(CStr(DatePart('yyyy', [t].[DateTimeValue])) + '-10-1 20:35:44')) = 10

