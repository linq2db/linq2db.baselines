BeforeExecute
-- SqlCe

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Datetime, '2010-' + Convert(NVarChar(11), [p].[ID]) + '-1') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(year, [t].[c1]) = 2010

