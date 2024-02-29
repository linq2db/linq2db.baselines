BeforeExecute
-- SqlServer.2014
DECLARE @p Int -- Int32
SET     @p = 3

SELECT
	DateAdd(dayofyear, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

