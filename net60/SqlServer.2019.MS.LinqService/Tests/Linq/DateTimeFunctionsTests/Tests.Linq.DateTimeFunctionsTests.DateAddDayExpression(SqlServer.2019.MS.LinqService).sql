﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 5

SELECT
	DateAdd(day, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

