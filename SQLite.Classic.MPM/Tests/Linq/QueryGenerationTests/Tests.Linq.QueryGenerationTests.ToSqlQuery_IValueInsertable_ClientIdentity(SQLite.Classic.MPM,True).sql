-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [TableWithIdentity]
(
	[Id],
	[Value]
)
VALUES
(
	543,
	123
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]
LIMIT 2

