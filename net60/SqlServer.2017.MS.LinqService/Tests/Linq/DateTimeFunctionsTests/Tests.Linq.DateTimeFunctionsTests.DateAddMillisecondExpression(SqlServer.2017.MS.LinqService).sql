﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p_1 Int -- Int32
SET     @p_1 = 226

SELECT
	DateAdd(millisecond, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

