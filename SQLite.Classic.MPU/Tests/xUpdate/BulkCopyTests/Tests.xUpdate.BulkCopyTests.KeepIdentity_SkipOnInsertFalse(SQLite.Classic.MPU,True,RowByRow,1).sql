-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value Integer -- Int32
SET     @Value = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT last_insert_rowid()

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

