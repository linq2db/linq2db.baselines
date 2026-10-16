-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN Substr([r].[Value], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN strftime('%Y-%m-%d %H:%M:%f', Substr([r].[Value], 1, Length([r].[Value]) - 6), CAST([r].[Amount] * 7 AS NVarChar(22)) || ' Day') || Substr([r].[Value], -6)
		ELSE strftime('%Y-%m-%d %H:%M:%f', [r].[Value], CAST([r].[Amount] * 7 AS NVarChar(22)) || ' Day') || '+00:00'
	END
FROM
	[DateAddRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[DateAddRow] [r]
WHERE
	CASE
		WHEN Substr([r].[Value], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN strftime('%Y-%m-%d %H:%M:%f', Substr([r].[Value], 1, Length([r].[Value]) - 6), CAST([r].[Amount] * 7 AS NVarChar(22)) || ' Day') || Substr([r].[Value], -6)
		ELSE strftime('%Y-%m-%d %H:%M:%f', [r].[Value], CAST([r].[Amount] * 7 AS NVarChar(22)) || ' Day') || '+00:00'
	END IS NULL
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
DECLARE @cutoff VarChar(29) -- AnsiString
SET     @cutoff = '2026-01-07 08:45:00.124-10:00'

SELECT
	[r].[Id]
FROM
	[DateAddRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', CASE
		WHEN Substr([r].[Value], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN strftime('%Y-%m-%d %H:%M:%f', Substr([r].[Value], 1, Length([r].[Value]) - 6), CAST([r].[Amount] * 7 AS NVarChar(22)) || ' Day') || Substr([r].[Value], -6)
		ELSE strftime('%Y-%m-%d %H:%M:%f', [r].[Value], CAST([r].[Amount] * 7 AS NVarChar(22)) || ' Day') || '+00:00'
	END) < strftime('%Y-%m-%d %H:%M:%f', @cutoff)
ORDER BY
	[r].[Id]

