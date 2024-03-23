BeforeExecute
-- SqlServer.2008

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, Convert(Date, N'2010-' + REPLICATE('0', CASE WHEN LEN(CAST([t].[ID] as NVARCHAR)) > 2 THEN 0 ELSE (2 - LEN(CAST([t].[ID] as NVARCHAR))) END) + CAST([t].[ID] as NVARCHAR) + N'-01')) = 2010

