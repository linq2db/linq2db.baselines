﻿BeforeExecute
-- SqlServer.2005
DECLARE @p1 Int -- Int32
SET     @p1 = 22

SELECT
	DateAdd(hour, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

