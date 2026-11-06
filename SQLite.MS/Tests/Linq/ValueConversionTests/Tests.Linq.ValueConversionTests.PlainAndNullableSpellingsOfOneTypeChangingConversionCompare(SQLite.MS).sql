-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[TicksConversionRow] [r]
WHERE
	[r].[Plain] = [r].[Date]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[TicksConversionRow] [r]
WHERE
	[r].[Plain] < [r].[Date]

-- SQLite.MS SQLite
SELECT
	CASE
		WHEN [r].[Id] <> 1 THEN [r].[Date]
		ELSE [r].[Plain]
	END
FROM
	[TicksConversionRow] [r]
ORDER BY
	[r].[Id]

