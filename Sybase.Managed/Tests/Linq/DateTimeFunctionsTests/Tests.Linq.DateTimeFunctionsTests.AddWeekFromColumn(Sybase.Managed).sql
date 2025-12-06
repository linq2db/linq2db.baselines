-- Sybase.Managed Sybase

SELECT
	CONVERT(Date, DateAdd(week, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

