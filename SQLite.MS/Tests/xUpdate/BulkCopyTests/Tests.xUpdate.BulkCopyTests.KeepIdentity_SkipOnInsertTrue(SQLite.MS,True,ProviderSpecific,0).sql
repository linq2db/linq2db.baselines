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

-- SQLite.MS SQLite

SELECT last_insert_rowid()

-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ID],
	[intDataType]
)
VALUES
(13,200),
(23,300)

-- SQLite.MS SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 3

SELECT
	[t1].[ID],
	[t1].[intDataType]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] > @lastId
ORDER BY
	[t1].[ID]

-- SQLite.MS SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 3

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

