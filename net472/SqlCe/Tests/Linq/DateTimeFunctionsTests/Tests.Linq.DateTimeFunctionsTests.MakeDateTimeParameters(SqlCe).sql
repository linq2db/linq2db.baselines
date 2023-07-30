BeforeExecute
-- SqlCe
DECLARE @p NVarChar(5) -- String
SET     @p = '2010-'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Datetime, @p + REPLICATE('0', 2 - LEN(CAST([p].[ID] as NVARCHAR(2)))) + CAST([p].[ID] as NVARCHAR(2)) + '-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

