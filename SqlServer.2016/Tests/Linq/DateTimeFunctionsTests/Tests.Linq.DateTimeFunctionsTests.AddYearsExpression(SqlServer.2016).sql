BeforeExecute
-- SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	CAST(DateAdd(year, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

