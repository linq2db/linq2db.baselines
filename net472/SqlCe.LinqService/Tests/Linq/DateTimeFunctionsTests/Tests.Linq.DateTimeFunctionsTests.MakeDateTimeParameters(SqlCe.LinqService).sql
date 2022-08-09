BeforeExecute
-- SqlCe
DECLARE @p_1 NVarChar(5) -- String
SET     @p_1 = '2010-'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Datetime, @p_1 + REPLICATE('0', 2 - LEN(CAST([p].[ID] as NVARCHAR(2)))) + CAST([p].[ID] as NVARCHAR(2)) + '-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

