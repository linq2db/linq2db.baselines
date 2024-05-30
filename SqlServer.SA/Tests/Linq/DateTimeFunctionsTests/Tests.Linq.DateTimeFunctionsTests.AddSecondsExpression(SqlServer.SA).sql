BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = -35

SELECT
	DatePart(second, DateAdd(second, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

