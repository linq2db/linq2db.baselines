﻿BeforeExecute
-- Access AccessOleDb
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 41

SELECT
	DateAdd('s', @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

