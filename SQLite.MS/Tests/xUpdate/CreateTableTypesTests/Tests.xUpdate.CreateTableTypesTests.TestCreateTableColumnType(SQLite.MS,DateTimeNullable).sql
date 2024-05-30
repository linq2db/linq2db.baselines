BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CreateTableTypes]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CreateTableTypes]
(
	[Id]               INTEGER   NOT NULL,
	[DateTimeNullable] DateTime2     NULL
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @DateTimeNullable  -- DateTime
SET     @DateTimeNullable = '2018-11-25 01:02:03.000'

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
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[DateTimeNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CreateTableTypes]

