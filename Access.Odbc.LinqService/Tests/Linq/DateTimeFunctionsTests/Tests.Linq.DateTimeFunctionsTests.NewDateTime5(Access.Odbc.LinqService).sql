﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	DateSerial(DatePart('yyyy', [t].[DateTimeValue]) + 1, 10, 1)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('m', DateSerial(DatePart('yyyy', [t].[DateTimeValue]) + 1, 10, 1)) = 10

