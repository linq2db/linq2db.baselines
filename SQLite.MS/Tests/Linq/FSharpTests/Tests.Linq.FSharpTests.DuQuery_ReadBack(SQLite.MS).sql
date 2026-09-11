-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Key  -- Int32
SET     @Key = 10

INSERT INTO [DuRow]
(
	[Id],
	[Key]
)
VALUES
(
	@Id,
	@Key
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Key  -- Int32
SET     @Key = 20

INSERT INTO [DuRow]
(
	[Id],
	[Key]
)
VALUES
(
	@Id,
	@Key
)

-- SQLite.MS SQLite
SELECT
	[x].[Key]
FROM
	[DuRow] [x]
ORDER BY
	[x].[Id]

