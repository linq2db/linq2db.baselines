﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p_1 Double
SET     @p_1 = 22

SELECT
	DateAdd('h', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

