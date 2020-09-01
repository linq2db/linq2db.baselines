BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value_1  -- Int32
SET     @Value_1 = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.MS SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AllTypes]
(
	[ID],
	[intDataType]
)
VALUES
(165,200),
(175,300)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 155

SELECT
	[_].[ID],
	[_].[intDataType]
FROM
	[AllTypes] [_]
WHERE
	[_].[ID] > @lastId
ORDER BY
	[_].[ID]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 155

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

