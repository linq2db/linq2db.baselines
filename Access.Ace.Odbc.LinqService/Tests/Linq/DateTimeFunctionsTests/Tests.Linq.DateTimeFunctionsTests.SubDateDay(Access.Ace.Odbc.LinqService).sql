﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	DATEDIFF('d', [t].[DateTimeValue], DateAdd('h', 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

