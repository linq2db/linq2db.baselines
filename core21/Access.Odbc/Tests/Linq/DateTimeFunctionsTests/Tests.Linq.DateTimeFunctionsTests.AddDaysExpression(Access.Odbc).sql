﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p_1 Double
SET     @p_1 = 5

SELECT
	DateAdd('d', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

