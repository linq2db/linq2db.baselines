﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	CAST(DateAdd(weekday, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

