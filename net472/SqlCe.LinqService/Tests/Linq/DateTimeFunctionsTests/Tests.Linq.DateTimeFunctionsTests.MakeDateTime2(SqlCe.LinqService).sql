BeforeExecute
-- SqlCe

SELECT
	Convert(DateTime, '2010-' + Convert(NVarChar(11), [p].[ID]) + '-1 20:35:44')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, Convert(DateTime, '2010-' + Convert(NVarChar(11), [p].[ID]) + '-1 20:35:44')) = 2010

