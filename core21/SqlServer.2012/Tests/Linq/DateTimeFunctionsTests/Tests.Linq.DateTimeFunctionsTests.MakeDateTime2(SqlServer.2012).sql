BeforeExecute
-- SqlServer.2012

SELECT
	Convert(DateTime2, N'2010-' + Convert(VarChar(11), [p].[ID]) + N'-1 20:35:44')
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, Convert(DateTime2, N'2010-' + Convert(VarChar(11), [p].[ID]) + N'-1 20:35:44')) = 2010

