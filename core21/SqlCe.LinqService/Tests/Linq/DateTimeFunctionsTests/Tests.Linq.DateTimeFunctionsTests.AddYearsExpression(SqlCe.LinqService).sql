﻿BeforeExecute
-- SqlCe
DECLARE @p1 Int -- Int32
SET     @p1 = 1

SELECT
	DateAdd(year, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

