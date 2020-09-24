BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 330

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

