-- SqlServer.2014
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V], [r].[N]) = N'Ж'

-- SqlServer.2014
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V2], [r].[V], [r].[N]) = N'Ж'

-- SqlServer.2014
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V], [r].[N], [r].[V2]) = N'Ж'

-- SqlServer.2014
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V], [r].[N], [r].[V2]) = N'Ж'

