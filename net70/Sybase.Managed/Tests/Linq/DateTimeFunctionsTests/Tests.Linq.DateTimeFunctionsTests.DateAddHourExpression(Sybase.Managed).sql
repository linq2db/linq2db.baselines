BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	DatePart(hour, DateAdd(hour, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

