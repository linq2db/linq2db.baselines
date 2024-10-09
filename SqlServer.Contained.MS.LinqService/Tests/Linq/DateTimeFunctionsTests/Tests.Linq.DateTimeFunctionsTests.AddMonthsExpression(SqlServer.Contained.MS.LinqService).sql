BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Date Int -- Int32
SET     @Date = -2

SELECT
	CAST(DateAdd(month, @Date, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

