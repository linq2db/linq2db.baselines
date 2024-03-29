﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CreateTableTypes]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CreateTableTypes]
(
	[String] NVarChar(255)     NULL,
	[Id]     INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @String NVarChar -- String
SET     @String = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @String NVarChar(23) -- String
SET     @String = 'test max value nullable'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[String]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CreateTableTypes]

