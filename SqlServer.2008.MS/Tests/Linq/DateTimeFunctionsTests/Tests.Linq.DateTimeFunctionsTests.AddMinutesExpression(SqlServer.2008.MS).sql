BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Minute Int -- Int32
SET     @Minute = -8

SELECT
	DatePart(minute, DateAdd(minute, @Minute, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

