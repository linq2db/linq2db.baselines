﻿BeforeExecute
-- Access AccessOleDb
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 5

SELECT
	DateAdd('d', @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

