﻿BeforeExecute
-- SqlCe
DECLARE @p_1 Int -- Int32
SET     @p_1 = 22

SELECT
	DateAdd(hour, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

