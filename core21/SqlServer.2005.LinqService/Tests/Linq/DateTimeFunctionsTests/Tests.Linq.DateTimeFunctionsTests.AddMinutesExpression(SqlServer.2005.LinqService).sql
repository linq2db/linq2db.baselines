﻿BeforeExecute
-- SqlServer.2005
DECLARE @p1 Int -- Int32
SET     @p1 = -8

SELECT
	DateAdd(minute, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

