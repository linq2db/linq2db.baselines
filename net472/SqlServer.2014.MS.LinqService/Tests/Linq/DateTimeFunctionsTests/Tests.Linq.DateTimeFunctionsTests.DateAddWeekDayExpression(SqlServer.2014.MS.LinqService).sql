﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	DateAdd(weekday, @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

