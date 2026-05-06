-- SQLite.MS SQLite

INSERT INTO [Issue3766Table] AS [t1]
(
	[Id],
	[Value]
)
VALUES
(
	'2020-02-29 17:09:55.123+00:00',
	0
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Value] = 0

-- SQLite.MS SQLite

INSERT INTO [Issue3766Table] AS [t1]
(
	[Id],
	[Value]
)
VALUES
(
	'2020-02-29 17:09:55.123+00:00',
	0
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Value] = 0

