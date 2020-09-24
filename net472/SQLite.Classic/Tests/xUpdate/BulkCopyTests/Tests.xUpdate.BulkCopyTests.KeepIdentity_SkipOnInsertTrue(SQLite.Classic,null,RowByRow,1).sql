BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Value_1  -- Int32
SET     @Value_1 = 200

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Value_1  -- Int32
SET     @Value_1 = 300

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 272

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
-- SQLite.Classic SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 272

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

