-- SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DoubleNullable Real -- Double
SET     @DoubleNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DoubleNullable]
)
VALUES
(
	@Id,
	@DoubleNullable
)

-- SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DoubleNullable Real -- Double
SET     @DoubleNullable = 4.1299999999999999

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DoubleNullable]
)
VALUES
(
	@Id,
	@DoubleNullable
)

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[DoubleNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

