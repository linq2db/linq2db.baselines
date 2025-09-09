BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Minute Integer -- Int32
SET     @Minute = -8

SELECT
	DatePart(minute, DateAdd(minute, @Minute, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

