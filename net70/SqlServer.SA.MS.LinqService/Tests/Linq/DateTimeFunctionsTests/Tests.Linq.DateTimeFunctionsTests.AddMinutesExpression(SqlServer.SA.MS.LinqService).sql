﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @p_1 Int -- Int32
SET     @p_1 = -8

SELECT
	DateAdd(minute, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

