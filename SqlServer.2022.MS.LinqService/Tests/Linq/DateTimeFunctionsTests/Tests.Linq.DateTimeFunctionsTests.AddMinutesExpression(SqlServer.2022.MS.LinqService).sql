BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Minute Int -- Int32
SET     @Minute = -8

SELECT
	DatePart(minute, DateAdd(minute, @Minute, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

