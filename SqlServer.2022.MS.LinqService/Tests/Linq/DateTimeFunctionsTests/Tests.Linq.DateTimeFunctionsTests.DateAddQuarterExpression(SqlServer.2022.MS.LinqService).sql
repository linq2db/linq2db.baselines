BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Value Int -- Int32
SET     @Value = -1

SELECT
	CAST(DateAdd(quarter, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

