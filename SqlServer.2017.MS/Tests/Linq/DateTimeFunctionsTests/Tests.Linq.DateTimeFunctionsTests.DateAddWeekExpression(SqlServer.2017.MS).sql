-- SqlServer.2017.MS SqlServer.2017
DECLARE @Value Int -- Int32
SET     @Value = -1

SELECT
	CAST(DateAdd(week, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

