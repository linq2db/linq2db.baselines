﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @p_1 Float -- Double
SET     @p_1 = 226

SELECT
	DateAdd(millisecond, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

