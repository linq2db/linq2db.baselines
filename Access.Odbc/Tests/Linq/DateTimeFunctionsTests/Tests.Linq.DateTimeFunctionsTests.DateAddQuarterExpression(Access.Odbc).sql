﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = -1

SELECT
	DateValue(DateAdd('q', ?, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

