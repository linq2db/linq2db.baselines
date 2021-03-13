BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DateAdd(month, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

