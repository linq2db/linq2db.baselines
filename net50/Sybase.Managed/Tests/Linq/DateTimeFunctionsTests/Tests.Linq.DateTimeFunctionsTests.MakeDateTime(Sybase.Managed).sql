BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(Date, '2010-' + Convert(VarChar(11), [p].[ID]) + '-1')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, Convert(Date, '2010-' + Convert(VarChar(11), [p].[ID]) + '-1')) = 2010

