﻿BeforeExecute
--  SQLite.Classic SQLite

UPDATE sqlite_sequence SET seq = 2 WHERE name = 'AllTypes'

BeforeExecute
--  SQLite.Classic SQLite
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
--  SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
--  SQLite.Classic SQLite (asynchronously)
DECLARE @Value  -- Int32
SET     @Value = 200

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value
)

BeforeExecute
--  SQLite.Classic SQLite (asynchronously)
DECLARE @Value  -- Int32
SET     @Value = 300

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	@Value
)

BeforeExecute
--  SQLite.Classic SQLite
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

BeforeExecute
--  SQLite.Classic SQLite
DECLARE @lastId  -- Int32
SET     @lastId = 3

DELETE FROM
	[AllTypes]
WHERE
	[AllTypes].[ID] >= @lastId

