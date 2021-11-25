BeforeExecute
-- SqlCe

SELECT
	Convert(Datetime, '2010-' + Convert(NVarChar(11), [p].[ID]) + '-1')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, Convert(Datetime, '2010-' + Convert(NVarChar(11), [p].[ID]) + '-1')) = 2010

