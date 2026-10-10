-- SqlServer.2012.MS SqlServer.2012
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V], [r].[N]) = N'Ж'

