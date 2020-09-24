﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [CreateTableTypes]
(
	[Id]               INTEGER   NOT NULL,
	[DateTimeNullable] DateTime2     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @DateTimeNullable  -- DateTime
SET     @DateTimeNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTimeNullable]
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @DateTimeNullable  -- DateTime
SET     @DateTimeNullable = '2018-11-25 01:02:03'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTimeNullable]
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[DateTimeNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [CreateTableTypes]

