-- SQLite.MS SQLite
DECLARE @target  -- DateTime
SET     @target = '2026-01-02 00:00:00.000'

SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	Date(strftime('%Y-%m-%d %H:%M:%f', [r].[Date], CAST([r].[Amount] AS NVarChar(22)) || ' Day')) < Date(@target)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	[r].[Amount] IS NULL

