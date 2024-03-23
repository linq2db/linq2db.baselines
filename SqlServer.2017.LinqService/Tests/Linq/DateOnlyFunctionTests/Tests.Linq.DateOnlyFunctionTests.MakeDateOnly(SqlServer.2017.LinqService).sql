BeforeExecute
-- SqlServer.2017

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, Convert(Date, N'2010-' + format([t].[ID], 'd2') + N'-01')) = 2010

