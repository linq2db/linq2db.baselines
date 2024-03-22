BeforeExecute
-- SqlCe

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, Convert(DateTime, '2010-' + REPLICATE('0', 2 - LEN(CAST([t].[ID] as NVARCHAR(2)))) + CAST([t].[ID] as NVARCHAR(2)) + '-01 20:35:44')) = 2010

