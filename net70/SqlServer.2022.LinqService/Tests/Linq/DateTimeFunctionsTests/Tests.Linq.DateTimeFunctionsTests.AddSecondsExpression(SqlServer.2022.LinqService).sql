﻿BeforeExecute
-- SqlServer.2022
DECLARE @p_1 Int -- Int32
SET     @p_1 = -35

SELECT
	DateAdd(second, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

