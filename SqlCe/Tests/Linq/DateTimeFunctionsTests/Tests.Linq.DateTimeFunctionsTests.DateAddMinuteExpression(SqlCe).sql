-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	DatePart(minute, DateAdd(minute, @Value, [t].[DateTimeValue])) as [Minute_1]
FROM
	[LinqDataTypes] [t]

