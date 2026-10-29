-- SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Key Integer -- Int32
SET     @Key = 10
DECLARE @OptKey Integer -- Int32
SET     @OptKey = 10

INSERT INTO [DuPairRow]
(
	[Id],
	[Key],
	[OptKey]
)
VALUES
(
	@Id,
	@Key,
	@OptKey
)

-- SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Key Integer -- Int32
SET     @Key = 20
DECLARE @OptKey Integer -- Int32
SET     @OptKey = 21

INSERT INTO [DuPairRow]
(
	[Id],
	[Key],
	[OptKey]
)
VALUES
(
	@Id,
	@Key,
	@OptKey
)

-- SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Key Integer -- Int32
SET     @Key = 30
DECLARE @OptKey Integer -- Int32
SET     @OptKey = NULL

INSERT INTO [DuPairRow]
(
	[Id],
	[Key],
	[OptKey]
)
VALUES
(
	@Id,
	@Key,
	@OptKey
)

-- SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	[DuPairRow] [x]
WHERE
	[x].[OptKey] = [x].[Key] OR [x].[OptKey] IS NULL AND [x].[Key] IS NULL

