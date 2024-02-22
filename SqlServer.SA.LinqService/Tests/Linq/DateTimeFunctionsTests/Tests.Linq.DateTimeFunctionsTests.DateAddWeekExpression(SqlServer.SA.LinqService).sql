BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	Convert(Date, DateAdd(week, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

