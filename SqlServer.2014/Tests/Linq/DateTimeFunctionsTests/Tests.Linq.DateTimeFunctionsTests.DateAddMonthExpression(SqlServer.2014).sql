﻿BeforeExecute
-- SqlServer.2014
DECLARE @Value Int -- Int32
SET     @Value = 2

SELECT
	CAST(DateAdd(month, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

