-- SqlServer.2025
DECLARE @Value Int -- Int32
SET     @Value = 41

SELECT
	DatePart(second, DateAdd(second, @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

