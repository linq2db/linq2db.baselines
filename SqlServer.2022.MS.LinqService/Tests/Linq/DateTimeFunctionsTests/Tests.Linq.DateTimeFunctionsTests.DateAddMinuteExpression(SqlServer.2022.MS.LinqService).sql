﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 5

SELECT
	DateAdd(minute, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

