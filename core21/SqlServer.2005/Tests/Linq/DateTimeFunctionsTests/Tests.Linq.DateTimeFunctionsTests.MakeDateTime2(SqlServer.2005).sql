BeforeExecute
-- SqlServer.2005

SELECT
	Convert(DateTime, N'2010-' + Convert(VarChar(11), [p].[ID]) + N'-1 20:35:44', 120)
FROM
	[LinqDataTypes] [p]
WHERE
	DatePart(year, Convert(DateTime, N'2010-' + Convert(VarChar(11), [p].[ID]) + N'-1 20:35:44', 120)) = 2010

