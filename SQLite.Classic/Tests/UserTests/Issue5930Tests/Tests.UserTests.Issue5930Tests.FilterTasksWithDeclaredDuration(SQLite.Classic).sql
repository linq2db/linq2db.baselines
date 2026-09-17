-- SQLite.Classic SQLite
DECLARE @cutoff VarChar(23) -- AnsiString
SET     @cutoff = '2026-09-15 11:30:00.000'

SELECT
	[r].[Id]
FROM
	[TaskRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [r].[StartDateTime], CAST(CAST(([r].[PreNotification] / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second')) < strftime('%Y-%m-%d %H:%M:%f', @cutoff)

