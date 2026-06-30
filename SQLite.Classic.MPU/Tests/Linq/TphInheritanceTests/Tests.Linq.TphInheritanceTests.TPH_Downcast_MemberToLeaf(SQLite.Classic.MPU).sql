-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale  -- Boolean
SET     @IsMale = 1

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name],
	[IsMale]
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@IsMale
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'Bob'
DECLARE @Age  -- Int32
SET     @Age = 10

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@Age
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @ValueId  -- Int32
SET     @ValueId = 1

INSERT INTO [TphCastHolder]
(
	[Id],
	[ValueId]
)
VALUES
(
	@Id,
	@ValueId
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[a_DValue].[Id],
	[a_DValue].[Code],
	[a_DValue].[Name],
	[a_DValue].[Age],
	[a_DValue].[IsMale]
FROM
	[TphCastHolder] [h]
		LEFT JOIN [Base] [a_DValue] ON [h].[ValueId] = [a_DValue].[Id]
WHERE
	[h].[ValueId] = 1

