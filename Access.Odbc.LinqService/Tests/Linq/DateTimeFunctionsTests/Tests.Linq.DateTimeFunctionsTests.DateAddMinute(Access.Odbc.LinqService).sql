﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	DatePart('n', DateAdd('n', 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

