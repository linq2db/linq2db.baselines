BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = 1

SELECT 
	DateAdd(year, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

