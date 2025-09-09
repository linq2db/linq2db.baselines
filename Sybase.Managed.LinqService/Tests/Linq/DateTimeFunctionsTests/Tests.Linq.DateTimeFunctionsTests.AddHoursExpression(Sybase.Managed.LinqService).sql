BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Hour Integer -- Int32
SET     @Hour = 22

SELECT
	DatePart(hour, DateAdd(hour, @Hour, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

