﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE sqlite_sequence SET seq = 2 WHERE name = 'AllTypes'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(200),
(300)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 3

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 3

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

