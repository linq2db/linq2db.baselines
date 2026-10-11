-- SqlServer.2017.MS SqlServer.2017
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V], [r].[N]) = N'Ж'

-- SqlServer.2017.MS SqlServer.2017
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V2], [r].[V], [r].[N]) = N'Ж'

-- SqlServer.2017.MS SqlServer.2017
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V], [r].[N], [r].[V2]) = N'Ж'

-- SqlServer.2017.MS SqlServer.2017
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V], [r].[N], [r].[V2]) = N'Ж'

