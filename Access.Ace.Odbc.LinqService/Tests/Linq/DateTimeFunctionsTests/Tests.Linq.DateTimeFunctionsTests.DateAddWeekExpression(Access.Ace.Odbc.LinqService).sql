﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = -1

SELECT
	DateValue(DateAdd('ww', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

