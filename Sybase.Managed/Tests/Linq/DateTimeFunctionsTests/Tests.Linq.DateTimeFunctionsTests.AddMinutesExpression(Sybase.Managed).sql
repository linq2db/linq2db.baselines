BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = -8

SELECT
	DatePart(minute, DateAdd(minute, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

