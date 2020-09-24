﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [CreateTableTypes]
(
	[Id]              INTEGER NOT NULL,
	[IntEnumNullable] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @IntEnumNullable  -- Int32
SET     @IntEnumNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[IntEnumNullable]
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @IntEnumNullable  -- Int32
SET     @IntEnumNullable = 60

INSERT INTO [CreateTableTypes]
(
	[Id],
	[IntEnumNullable]
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[IntEnumNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [CreateTableTypes]

