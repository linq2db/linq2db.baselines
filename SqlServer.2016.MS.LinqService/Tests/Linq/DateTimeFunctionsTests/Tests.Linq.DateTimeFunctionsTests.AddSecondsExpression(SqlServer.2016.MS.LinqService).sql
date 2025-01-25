BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = -35

SELECT
	DatePart(second, DateAdd(second, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

