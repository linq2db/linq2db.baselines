BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 11

SELECT
	CAST(DateAdd(year, @p, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

