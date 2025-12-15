-- SQLite.MS SQLite
DECLARE @Value  -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	@Value
)

-- SQLite.MS SQLite

UPDATE
	[TableWithIdentity]
SET
	[Value] = 123

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]
LIMIT 2

