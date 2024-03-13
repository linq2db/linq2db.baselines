BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	Convert(Date, DateAdd(weekday, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

