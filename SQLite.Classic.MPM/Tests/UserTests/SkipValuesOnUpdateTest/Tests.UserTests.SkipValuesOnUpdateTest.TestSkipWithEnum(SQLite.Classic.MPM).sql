-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Gender NVarChar(6) -- String
SET     @Gender = 'Female'

INSERT INTO [SkipOnUpdateEnum]
(
	[Id],
	[Name],
	[Age],
	[Gender]
)
VALUES
(
	@Id,
	@Name,
	@Age,
	@Gender
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[SkipOnUpdateEnum] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Gender NVarChar(4) -- String
SET     @Gender = 'Male'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateEnum]
SET
	[Name] = @Name,
	[Age] = @Age,
	[Gender] = @Gender
WHERE
	[SkipOnUpdateEnum].[Id] = @Id

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[SkipOnUpdateEnum] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'Francine'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateEnum]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[SkipOnUpdateEnum].[Id] = @Id

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[SkipOnUpdateEnum] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

