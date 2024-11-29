BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Second Integer -- Int32
SET     @Second = -35

SELECT
	DatePart(second, DateAdd(second, @Second, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

