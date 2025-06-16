BeforeExecute
-- SQLite.MS SQLite

UPDATE sqlite_sequence SET seq = 2 WHERE name = 'AllTypes'

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value  -- Int32
SET     @Value = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value
)

BeforeExecute
-- SQLite.MS SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(200),
(300)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 384

SELECT
	[t1].[ID],
	[t1].[intDataType]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] > @lastId
ORDER BY
	[t1].[ID]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 384

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

