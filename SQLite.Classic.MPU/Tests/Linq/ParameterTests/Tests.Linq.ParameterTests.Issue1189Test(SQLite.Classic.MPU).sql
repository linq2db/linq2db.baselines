-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @NonReadonlyDateTime VarChar(23) -- AnsiString
SET     @NonReadonlyDateTime = '2020-02-29 17:54:55.123'

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	'2020-02-29 17:54:55.123'
FROM
	[Issue1189Customer] [k_1]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123') <= strftime('%Y-%m-%d %H:%M:%f', @NonReadonlyDateTime)

