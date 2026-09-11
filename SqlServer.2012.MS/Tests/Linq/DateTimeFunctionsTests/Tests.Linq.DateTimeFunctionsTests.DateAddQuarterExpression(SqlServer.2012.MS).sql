-- SqlServer.2012.MS SqlServer.2012
DECLARE @Value Int -- Int32
SET     @Value = -1

SELECT
	CAST(DateAdd(quarter, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

