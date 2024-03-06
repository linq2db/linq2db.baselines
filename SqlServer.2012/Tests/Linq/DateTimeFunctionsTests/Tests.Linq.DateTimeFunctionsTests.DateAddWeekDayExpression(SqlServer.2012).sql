BeforeExecute
-- SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	Convert(Date, DateAdd(weekday, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

