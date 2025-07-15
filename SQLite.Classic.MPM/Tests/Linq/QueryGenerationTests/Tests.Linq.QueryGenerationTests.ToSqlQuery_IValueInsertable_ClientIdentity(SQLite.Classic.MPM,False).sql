BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @value  -- Int32
SET     @value = 123

INSERT INTO [TableWithIdentity]
(
	[Id],
	[Value]
)
VALUES
(
	543,
	@value
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]
LIMIT 2

