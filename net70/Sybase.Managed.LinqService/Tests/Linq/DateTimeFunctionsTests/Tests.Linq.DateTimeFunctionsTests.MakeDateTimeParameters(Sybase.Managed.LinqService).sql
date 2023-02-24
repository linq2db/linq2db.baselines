BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 UniVarChar(5) -- String
SET     @p_1 = '2010-'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, @p_1 + right(replicate('0',2) + cast([p].[ID] as varchar(255)),2) + '-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

