﻿BeforeExecute
-- Access AccessOleDb

SELECT
	CDate(CStr(DatePart('yyyy', [d].[DateTimeValue])) + '-02-24 00:00:00')
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart('d', CDate(CStr(DatePart('yyyy', [d].[DateTimeValue])) + '-02-24 00:00:00')) > 0

