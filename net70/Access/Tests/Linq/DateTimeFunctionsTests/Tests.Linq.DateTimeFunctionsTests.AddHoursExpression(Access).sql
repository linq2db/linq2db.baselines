﻿BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 22

SELECT
	DatePart('h', DateAdd('h', @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

