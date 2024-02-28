BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Convert(Date, REPLICATE('0', CASE WHEN LEN(CAST((2010 + [t].[ID]) as NVARCHAR)) > 4 THEN 0 ELSE (4 - LEN(CAST((2010 + [t].[ID]) as NVARCHAR))) END) + CAST((2010 + [t].[ID]) as NVARCHAR) + N'-10-01')
FROM
	[LinqDataTypes] [t]

