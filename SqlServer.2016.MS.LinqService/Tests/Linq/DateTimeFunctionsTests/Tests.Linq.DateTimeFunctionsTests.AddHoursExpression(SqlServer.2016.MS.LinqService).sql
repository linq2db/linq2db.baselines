BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
DECLARE @Hour Int -- Int32
SET     @Hour = 22

SELECT
	DatePart(hour, DateAdd(hour, @Hour, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

