BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = -35

SELECT
	DatePart(second, DateAdd(second, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

