﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @p_1 Int -- Int32
SET     @p_1 = 226

SELECT
	DateAdd(millisecond, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

