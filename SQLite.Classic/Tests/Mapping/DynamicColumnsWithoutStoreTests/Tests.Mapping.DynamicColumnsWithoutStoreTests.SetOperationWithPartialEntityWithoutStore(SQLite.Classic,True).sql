-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [NoStorePlain]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = -1

INSERT INTO [NoStorePlain]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	[NoStorePlain] [x]
WHERE
	[x].[Id] < 0
UNION ALL
SELECT
	[x_1].[Id]
FROM
	[NoStorePlain] [x_1]
WHERE
	[x_1].[Id] > 0

