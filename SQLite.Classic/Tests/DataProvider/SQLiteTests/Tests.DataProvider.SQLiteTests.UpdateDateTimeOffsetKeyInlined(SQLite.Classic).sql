-- SQLite.Classic SQLite
INSERT INTO [DateTimeOffsetKeyTable]
(
	[Id],
	[Value]
)
VALUES
(
	'2020-02-29 17:09:55.123+00:00',
	0
)

-- SQLite.Classic SQLite
UPDATE
	[DateTimeOffsetKeyTable]
SET
	[Value] = 0
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [DateTimeOffsetKeyTable].[Id]) = strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:09:55.123+00:00')

