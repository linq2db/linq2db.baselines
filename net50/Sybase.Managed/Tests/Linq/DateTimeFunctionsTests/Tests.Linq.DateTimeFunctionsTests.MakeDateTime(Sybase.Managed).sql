BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, '2010-' + Convert(NVarChar(100), [p].[ID]) + '-1') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

