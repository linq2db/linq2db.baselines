BeforeExecute
-- SqlServer.2012
DECLARE @Second Int -- Int32
SET     @Second = -35

SELECT
	DatePart(second, DateAdd(second, @Second, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

