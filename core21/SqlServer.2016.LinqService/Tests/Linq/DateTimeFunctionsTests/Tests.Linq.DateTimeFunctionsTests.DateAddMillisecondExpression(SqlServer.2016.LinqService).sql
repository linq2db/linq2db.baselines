﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @p1 Int -- Int32
SET     @p1 = 226

SELECT
	DateAdd(millisecond, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

