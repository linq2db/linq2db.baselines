-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'a'

INSERT INTO [VOptRow]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO [VOptRow]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[x].[Id],
	[x].[Name]
FROM
	[VOptRow] [x]
WHERE
	[x].[Name] IS NULL

