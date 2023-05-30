BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 22

SELECT
	DatePart(hour, DateAdd(hour, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

