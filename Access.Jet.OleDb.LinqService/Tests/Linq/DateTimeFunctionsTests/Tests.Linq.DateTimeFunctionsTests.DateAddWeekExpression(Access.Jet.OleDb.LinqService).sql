﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = -1

SELECT
	DateValue(DateAdd('ww', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

