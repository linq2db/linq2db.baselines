﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	DateValue([d].[DateTimeValue])
FROM
	[LinqDataTypes] [d]
WHERE
	DatePart('d', [d].[DateTimeValue]) > 0

