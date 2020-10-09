BeforeExecute
-- SqlServer.2005
DECLARE @p1 Int -- Int32
SET     @p1 = -35

SELECT 
	DateAdd(second, @p1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

