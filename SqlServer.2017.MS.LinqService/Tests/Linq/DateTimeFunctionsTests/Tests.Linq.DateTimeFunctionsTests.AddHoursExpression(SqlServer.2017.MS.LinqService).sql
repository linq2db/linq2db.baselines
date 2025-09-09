BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)
DECLARE @Hour Int -- Int32
SET     @Hour = 22

SELECT
	DatePart(hour, DateAdd(hour, @Hour, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

