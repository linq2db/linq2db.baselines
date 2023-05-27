BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = -8

SELECT
	DateAdd(minute, @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

