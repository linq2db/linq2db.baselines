﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	DatePart(hour, DateAdd(hour, @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

