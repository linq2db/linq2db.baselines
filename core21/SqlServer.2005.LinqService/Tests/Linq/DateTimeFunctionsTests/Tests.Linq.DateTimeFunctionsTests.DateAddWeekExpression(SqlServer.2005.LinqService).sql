﻿BeforeExecute
-- SqlServer.2005
DECLARE @p1 Int -- Int32
SET     @p1 = -1

SELECT
	DateAdd(week, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

