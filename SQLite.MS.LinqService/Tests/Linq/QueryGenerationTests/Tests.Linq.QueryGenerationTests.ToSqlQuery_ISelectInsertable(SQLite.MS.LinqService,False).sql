BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value  -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentitySrc]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @addition  -- Int32
SET     @addition = 123

INSERT INTO [TableWithIdentity]
(
	[Value]
)
SELECT
	[t1].[Value] + @addition
FROM
	[TableWithIdentitySrc] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

