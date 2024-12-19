BeforeExecute
-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 1

SELECT
	DatePart(hour, DateAdd(hour, @Value, [t].[DateTimeValue])) as [c1]
FROM
	[LinqDataTypes] [t]

