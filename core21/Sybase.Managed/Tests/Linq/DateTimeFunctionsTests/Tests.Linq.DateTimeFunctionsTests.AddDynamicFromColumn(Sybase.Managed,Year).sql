BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DateAdd(year, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

