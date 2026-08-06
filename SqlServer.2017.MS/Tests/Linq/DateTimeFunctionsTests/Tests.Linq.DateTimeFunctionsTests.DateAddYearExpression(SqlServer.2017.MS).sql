-- SqlServer.2017.MS SqlServer.2017
DECLARE @Value Int -- Int32
SET     @Value = 11

SELECT
	CAST(DateAdd(year, @Value, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

