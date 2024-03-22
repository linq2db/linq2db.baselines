BeforeExecute
-- SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 41

SELECT
	DatePart(second, DateAdd(second, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

