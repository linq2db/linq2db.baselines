﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	CAST(DateAdd(day, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

