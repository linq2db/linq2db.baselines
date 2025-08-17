BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
DECLARE @Second Int -- Int32
SET     @Second = -35

SELECT
	DatePart(second, DateAdd(second, @Second, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

