﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	DateAdd(millisecond, 226, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

