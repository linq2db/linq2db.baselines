﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [CreateTableTypes]
(
	[Id]    INTEGER NOT NULL,
	[Int64] BigInt  NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Int64  -- Int64
SET     @Int64 = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64]
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Int64  -- Int64
SET     @Int64 = 3

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64]
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Int64]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [CreateTableTypes]

