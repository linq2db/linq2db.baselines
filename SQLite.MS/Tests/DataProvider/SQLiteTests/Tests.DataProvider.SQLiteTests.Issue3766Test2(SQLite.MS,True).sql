-- SQLite.MS SQLite

INSERT INTO [Issue3766Table]
(
	[Id],
	[Value]
)
VALUES
(
	'2020-02-29 17:09:55.123+00:00',
	0
)

-- SQLite.MS SQLite

UPDATE
	[Issue3766Table]
SET
	[Value] = 0
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [Issue3766Table].[Id]) = strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:09:55.123+00:00')

