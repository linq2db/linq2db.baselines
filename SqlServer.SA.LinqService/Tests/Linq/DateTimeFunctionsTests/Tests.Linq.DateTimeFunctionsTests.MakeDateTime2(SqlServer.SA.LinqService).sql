BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, Convert(DateTime2, N'2010-' + format([t].[ID], 'd2') + N'-01 20:35:44')) = 2010

