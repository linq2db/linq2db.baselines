﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CreateTableTypes]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CreateTableTypes]
(
	[Id]      INTEGER NOT NULL,
	[IntEnum] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @IntEnum  -- Int32
SET     @IntEnum = 11

INSERT INTO [CreateTableTypes]
(
	[Id],
	[IntEnum]
)
VALUES
(
	@Id,
	@IntEnum
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @IntEnum  -- Int32
SET     @IntEnum = 60

INSERT INTO [CreateTableTypes]
(
	[Id],
	[IntEnum]
)
VALUES
(
	@Id,
	@IntEnum
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[IntEnum]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CreateTableTypes]

