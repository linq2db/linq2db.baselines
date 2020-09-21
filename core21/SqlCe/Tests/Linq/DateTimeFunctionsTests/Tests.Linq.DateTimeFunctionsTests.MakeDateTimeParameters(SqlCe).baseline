BeforeExecute
-- SqlCe
DECLARE @p1 NVarChar(5) -- String
SET     @p1 = '2010-'

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Datetime, @p1 + Convert(NVarChar(11), [p].[ID]) + '-1') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

