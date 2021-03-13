BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DateAdd(day, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

