BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			Convert(Date, Convert(VarChar(11), DatePart(year, [p].[DateTimeValue]) + 1) + '-10-1') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

