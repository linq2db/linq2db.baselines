﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Double  -- Double
SET     @Double = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Double]
)
VALUES
(
	@Id,
	@Double
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Double  -- Double
SET     @Double = 3.1400000000000001

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Double]
)
VALUES
(
	@Id,
	@Double
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Double]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

