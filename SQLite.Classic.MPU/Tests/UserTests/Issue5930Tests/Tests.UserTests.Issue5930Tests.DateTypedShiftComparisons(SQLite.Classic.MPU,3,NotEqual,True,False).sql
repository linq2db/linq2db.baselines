-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	Date([r].[Target]) <> Date(strftime('%Y-%m-%d %H:%M:%f', [r].[Date], CAST(CAST(([r].[Duration] / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second')) OR
	[r].[Duration] IS NULL
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	[r].[Duration] IS NULL

