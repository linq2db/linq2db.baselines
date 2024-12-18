﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @value BigInt -- Int64
SET     @value = 0

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[DateTimeValue2],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[SmallIntValue],
	[t].[IntValue],
	[t].[BigIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[BigIntValue] = @value AND [t].[BigIntValue] IS NOT NULL

