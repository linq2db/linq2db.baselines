﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = 3

SELECT
	DateValue(DateAdd('y', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

