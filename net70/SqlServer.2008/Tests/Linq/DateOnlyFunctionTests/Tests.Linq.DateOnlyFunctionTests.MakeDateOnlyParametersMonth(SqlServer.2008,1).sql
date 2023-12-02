BeforeExecute
-- SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'01'

SELECT
	Convert(Date, REPLICATE('0', CASE WHEN LEN(CAST((2010 + [t].[ID]) as NVARCHAR)) > 4 THEN 0 ELSE (4 - LEN(CAST((2010 + [t].[ID]) as NVARCHAR))) END) + CAST((2010 + [t].[ID]) as NVARCHAR) + N'-' + @p + N'-01')
FROM
	[LinqDataTypes] [t]

