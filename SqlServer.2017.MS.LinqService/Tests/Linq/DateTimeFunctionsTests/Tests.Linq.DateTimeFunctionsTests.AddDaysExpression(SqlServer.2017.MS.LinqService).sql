﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)
DECLARE @Date Int -- Int32
SET     @Date = 5

SELECT
	CAST(DateAdd(day, @Date, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

