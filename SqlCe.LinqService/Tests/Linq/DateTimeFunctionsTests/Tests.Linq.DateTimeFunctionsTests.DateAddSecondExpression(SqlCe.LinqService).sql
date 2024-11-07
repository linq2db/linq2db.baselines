BeforeExecute
-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 41

SELECT
	DatePart(second, DateAdd(second, @Value, [t].[DateTimeValue])) as [Second_1]
FROM
	[LinqDataTypes] [t]

