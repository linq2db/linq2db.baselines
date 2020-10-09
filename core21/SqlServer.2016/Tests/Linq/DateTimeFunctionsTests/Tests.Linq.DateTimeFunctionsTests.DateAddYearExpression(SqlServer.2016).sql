BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @p1 Int -- Int32
SET     @p1 = 11

SELECT 
	DateAdd(year, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

