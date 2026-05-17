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

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[String]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

