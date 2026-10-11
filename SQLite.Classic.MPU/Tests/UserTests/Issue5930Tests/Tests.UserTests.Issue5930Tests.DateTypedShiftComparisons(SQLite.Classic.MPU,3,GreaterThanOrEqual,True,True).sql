-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @target VarChar(23) -- AnsiString
SET     @target = '2026-01-02 00:00:00.000'

SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', @target) >= strftime('%Y-%m-%d %H:%M:%f', [r].[Date], CAST(CAST(([r].[Duration] / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second')
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	[r].[Duration] IS NULL

