-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	CASE
		WHEN [r].[D] >= 0 THEN Int([r].[D])
		ELSE -Int(-[r].[D])
	END,
	CASE
		WHEN [r].[F] >= 0 THEN Int([r].[F])
		ELSE -Int(-[r].[F])
	END,
	CASE
		WHEN [r].[N] >= 0 THEN Int([r].[N])
		ELSE -Int(-[r].[N])
	END,
	CASE
		WHEN [r].[G] >= 0 THEN Int([r].[G])
		ELSE -Int(-[r].[G])
	END,
	CASE
		WHEN [r].[D] >= 0 THEN Int([r].[D])
		ELSE -Int(-[r].[D])
	END,
	CASE
		WHEN [r].[F] >= 0 THEN Int([r].[F])
		ELSE -Int(-[r].[F])
	END
FROM
	[TruncateValues] [r]
ORDER BY
	[r].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F],
	[t1].[N],
	[t1].[G]
FROM
	[TruncateValues] [t1]

