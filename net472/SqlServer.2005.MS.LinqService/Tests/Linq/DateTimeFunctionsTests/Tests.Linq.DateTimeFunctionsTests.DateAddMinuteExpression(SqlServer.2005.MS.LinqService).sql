﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @p_1 Int -- Int32
SET     @p_1 = 5

SELECT
	DateAdd(minute, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

