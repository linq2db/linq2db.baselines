BeforeExecute
-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = -8

SELECT
	DatePart(minute, DateAdd(minute, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

