-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StringConverted NVarChar(4) -- String
SET     @StringConverted = 'null'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringConverted]
)
VALUES
(
	@Id,
	@StringConverted
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StringConverted NVarChar(53) -- String
SET     @StringConverted = '[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringConverted]
)
VALUES
(
	@Id,
	@StringConverted
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[StringConverted]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

