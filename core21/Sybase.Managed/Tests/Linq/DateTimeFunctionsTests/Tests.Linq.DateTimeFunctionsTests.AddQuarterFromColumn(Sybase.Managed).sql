BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DateAdd(quarter, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

