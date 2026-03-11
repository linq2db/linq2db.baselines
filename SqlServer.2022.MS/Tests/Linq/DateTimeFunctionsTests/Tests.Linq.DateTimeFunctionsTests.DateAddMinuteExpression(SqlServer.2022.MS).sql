-- SqlServer.2022.MS SqlServer.2022
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	DatePart(minute, DateAdd(minute, @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

