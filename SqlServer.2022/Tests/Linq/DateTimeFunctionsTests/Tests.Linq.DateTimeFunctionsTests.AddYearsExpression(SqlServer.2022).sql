BeforeExecute
-- SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	CAST(DateAdd(year, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

