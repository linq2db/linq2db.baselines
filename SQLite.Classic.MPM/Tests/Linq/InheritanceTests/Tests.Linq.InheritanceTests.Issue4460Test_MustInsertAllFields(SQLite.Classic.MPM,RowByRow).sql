-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(10) -- String
SET     @Code = 'GrandChild'
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'Tom'
DECLARE @Surname NVarChar(5) -- String
SET     @Surname = 'Black'

INSERT INTO [Issue4460Table]
(
	[Id],
	[Code],
	[Name],
	[Surname]
)
VALUES
(
	@Id,
	@Code,
	@Name,
	@Surname
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Code],
	[t1].[Id],
	[t1].[Name],
	[t1].[Surname]
FROM
	[Issue4460Table] [t1]

