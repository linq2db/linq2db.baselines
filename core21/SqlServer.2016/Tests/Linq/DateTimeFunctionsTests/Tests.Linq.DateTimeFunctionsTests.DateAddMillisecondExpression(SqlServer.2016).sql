﻿BeforeExecute
-- SqlServer.2016
DECLARE @p_1 Float -- Double
SET     @p_1 = 226

SELECT
	DateAdd(millisecond, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.2016

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

