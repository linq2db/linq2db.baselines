-- SQLite.MS SQLite
SELECT
	[r].[Id],
	CASE
		WHEN [r].[D] >= 0 THEN Floor([r].[D])
		ELSE Ceiling([r].[D])
	END,
	CASE
		WHEN [r].[F] >= 0 THEN Floor([r].[F])
		ELSE Ceiling([r].[F])
	END,
	CASE
		WHEN [r].[N] >= 0 THEN Floor([r].[N])
		ELSE Ceiling([r].[N])
	END,
	CASE
		WHEN [r].[G] >= 0 THEN Floor([r].[G])
		ELSE Ceiling([r].[G])
	END,
	CASE
		WHEN [r].[D] >= 0 THEN Floor([r].[D])
		ELSE Ceiling([r].[D])
	END,
	CASE
		WHEN [r].[F] >= 0 THEN Floor([r].[F])
		ELSE Ceiling([r].[F])
	END
FROM
	[TruncateValues] [r]
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F],
	[t1].[N],
	[t1].[G]
FROM
	[TruncateValues] [t1]

