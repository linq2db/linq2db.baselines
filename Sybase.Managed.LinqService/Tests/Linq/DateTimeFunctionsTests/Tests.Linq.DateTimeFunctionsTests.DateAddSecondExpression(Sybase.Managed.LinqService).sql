BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 41

SELECT
	DatePart(second, DateAdd(second, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

