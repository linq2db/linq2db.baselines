BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 41

SELECT
	DatePart(second, DateAdd(second, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

