BeforeExecute
-- SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 3

SELECT
	DateAdd(dayofyear, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

