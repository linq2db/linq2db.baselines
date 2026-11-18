-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Marked Integer -- Int32
SET     @Marked = 5
DECLARE @Plain Integer -- Int32
SET     @Plain = 5

INSERT INTO [StorageTransparentRow]
(
	[Id],
	[Marked],
	[Plain]
)
VALUES
(
	@Id,
	@Marked,
	@Plain
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Marked Integer -- Int32
SET     @Marked = 6
DECLARE @Plain Integer -- Int32
SET     @Plain = 7

INSERT INTO [StorageTransparentRow]
(
	[Id],
	[Marked],
	[Plain]
)
VALUES
(
	@Id,
	@Marked,
	@Plain
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[StorageTransparentRow] [r]
WHERE
	[r].[Marked] = [r].[Plain]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Marked] + [r].[Plain]
FROM
	[StorageTransparentRow] [r]
ORDER BY
	[r].[Id]

