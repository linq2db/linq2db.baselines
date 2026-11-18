-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Boolean Integer -- Boolean
SET     @Boolean = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Boolean]
)
VALUES
(
	@Id,
	@Boolean
)

-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Boolean Integer -- Boolean
SET     @Boolean = 1

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Boolean]
)
VALUES
(
	@Id,
	@Boolean
)

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Boolean]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

