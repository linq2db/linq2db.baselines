﻿BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	DateAdd('m', @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

