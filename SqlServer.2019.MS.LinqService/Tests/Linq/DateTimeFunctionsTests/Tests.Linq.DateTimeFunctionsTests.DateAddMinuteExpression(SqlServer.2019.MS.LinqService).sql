BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 5

SELECT
	DatePart(minute, DateAdd(minute, @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

