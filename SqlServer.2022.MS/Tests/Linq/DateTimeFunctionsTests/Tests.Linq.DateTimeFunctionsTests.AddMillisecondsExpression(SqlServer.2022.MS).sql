﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DateAdd(millisecond, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateAdd(millisecond, 226, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

