﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Value Int -- Int32
SET     @Value = 3

SELECT
	CAST(DateAdd(dayofyear, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

