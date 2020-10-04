﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [CreateTableTypes]
(
	[Id]            INTEGER NOT NULL,
	[Int32Nullable] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Int32Nullable  -- Int32
SET     @Int32Nullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32Nullable]
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Int32Nullable  -- Int32
SET     @Int32Nullable = 2

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int32Nullable]
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Int32Nullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [CreateTableTypes]

