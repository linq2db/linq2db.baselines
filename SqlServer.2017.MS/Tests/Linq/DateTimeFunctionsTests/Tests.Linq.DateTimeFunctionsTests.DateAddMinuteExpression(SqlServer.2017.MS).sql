BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 5

SELECT
	DatePart(minute, DateAdd(minute, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

