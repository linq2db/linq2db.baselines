﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Value Int -- Int32
SET     @Value = 11

SELECT
	CAST(DateAdd(year, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

