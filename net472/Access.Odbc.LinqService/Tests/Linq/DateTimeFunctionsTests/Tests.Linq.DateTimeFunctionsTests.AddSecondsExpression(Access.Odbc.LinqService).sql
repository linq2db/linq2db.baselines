﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p_1 Int -- Int32
SET     @p_1 = -35

SELECT
	DateAdd('s', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

