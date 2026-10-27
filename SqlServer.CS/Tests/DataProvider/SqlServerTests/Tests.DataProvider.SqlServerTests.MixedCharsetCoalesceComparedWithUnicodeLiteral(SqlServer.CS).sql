-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V], [r].[N]) = N'Ж'

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V2], [r].[V], [r].[N]) = N'Ж'

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V], [r].[N], [r].[V2]) = N'Ж'

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[MixedCharsetCoalesceTable] [r]
WHERE
	Coalesce([r].[V], [r].[N], [r].[V2]) = N'Ж'

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	(
		SELECT
			Coalesce([r].[V], [r].[N]) as [X],
			[r].[V2]
		FROM
			[MixedCharsetCoalesceTable] [r]
	) [t1]
WHERE
	Coalesce([t1].[X], [t1].[V2]) = N'Ж'

