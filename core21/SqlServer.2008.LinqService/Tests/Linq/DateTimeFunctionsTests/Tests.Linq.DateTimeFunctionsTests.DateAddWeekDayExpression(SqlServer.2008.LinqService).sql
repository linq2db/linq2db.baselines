﻿BeforeExecute
-- SqlServer.2008
DECLARE @p1 Int -- Int32
SET     @p1 = 1

SELECT
	DateAdd(weekday, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

