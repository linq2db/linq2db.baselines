﻿BeforeExecute
-- SqlServer.2017
DECLARE @p_1 Float -- Double
SET     @p_1 = 5

SELECT
	DateAdd(minute, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

