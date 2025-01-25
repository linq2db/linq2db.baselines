BeforeExecute
-- SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 3

SELECT
	CAST(DateAdd(dayofyear, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

