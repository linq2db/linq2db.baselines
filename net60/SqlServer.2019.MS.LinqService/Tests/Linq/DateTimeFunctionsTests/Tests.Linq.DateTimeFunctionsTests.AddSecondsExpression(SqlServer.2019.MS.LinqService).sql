﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = -35

SELECT
	DateAdd(second, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

