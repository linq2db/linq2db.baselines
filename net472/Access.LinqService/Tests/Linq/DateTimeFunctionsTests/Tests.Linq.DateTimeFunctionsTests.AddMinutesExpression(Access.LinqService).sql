﻿BeforeExecute
-- Access AccessOleDb
DECLARE @p_1 Double
SET     @p_1 = -8

SELECT
	DateAdd('n', @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

