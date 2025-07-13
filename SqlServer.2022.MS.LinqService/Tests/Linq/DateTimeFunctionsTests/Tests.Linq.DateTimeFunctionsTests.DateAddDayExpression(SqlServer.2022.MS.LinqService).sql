BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	CAST(DateAdd(day, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

