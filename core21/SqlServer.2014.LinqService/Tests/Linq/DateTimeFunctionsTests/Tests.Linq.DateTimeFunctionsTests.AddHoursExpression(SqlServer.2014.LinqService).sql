﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @p1 Int -- Int32
SET     @p1 = 22

SELECT
	DateAdd(hour, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

