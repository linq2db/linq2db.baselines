-- SqlServer.2016
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V], [r].[N]) = N'Ж'

