﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	DateSerial(DatePart('yyyy', [t].[DateTimeValue]) + 1, 10, 1)
FROM
	[LinqDataTypes] [t]

