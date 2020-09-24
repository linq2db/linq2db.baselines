﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [CreateTableTypes]
(
	[Id]              INTEGER NOT NULL,
	[BooleanNullable] Bit         NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BooleanNullable  -- Boolean
SET     @BooleanNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[BooleanNullable]
)
VALUES
(
	@Id,
	@BooleanNullable
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @BooleanNullable  -- Boolean
SET     @BooleanNullable = 1

INSERT INTO [CreateTableTypes]
(
	[Id],
	[BooleanNullable]
)
VALUES
(
	@Id,
	@BooleanNullable
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[BooleanNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [CreateTableTypes]

