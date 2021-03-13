BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DateAdd(week, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

