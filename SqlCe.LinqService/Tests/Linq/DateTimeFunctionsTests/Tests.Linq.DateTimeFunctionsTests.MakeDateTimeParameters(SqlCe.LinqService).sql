BeforeExecute
-- SqlCe
DECLARE @p NVarChar(5) -- String
SET     @p = '2010-'

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart(year, Convert(Datetime, @p + REPLICATE('0', 2 - LEN(CAST([t].[ID] as NVARCHAR(2)))) + CAST([t].[ID] as NVARCHAR(2)) + '-01')) = 2010

