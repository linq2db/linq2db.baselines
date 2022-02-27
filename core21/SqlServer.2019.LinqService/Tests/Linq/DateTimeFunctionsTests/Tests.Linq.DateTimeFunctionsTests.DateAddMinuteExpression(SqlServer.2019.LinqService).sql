BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = 5

SELECT
	DateAdd(minute, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

