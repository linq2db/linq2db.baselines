--  SQLite.MS SQLite
DECLARE @Id  -- Int64
SET     @Id = 1
DECLARE @PermanentId  -- Guid
SET     @PermanentId = 'FEBC96CE-EE24-4E4C-9B1D-DA853DC3F456'
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'C1'
DECLARE @Name NVarChar(2) -- String
SET     @Name = 'N1'
DECLARE @IsDeleted  -- Boolean
SET     @IsDeleted = NULL

INSERT INTO [Subdivisions]
(
	[Id],
	[PermanentId],
	[Code],
	[Name],
	[IsDeleted]
)
VALUES
(
	@Id,
	@PermanentId,
	@Code,
	@Name,
	@IsDeleted
)



--  SQLite.MS SQLite

SELECT last_insert_rowid()



--  SQLite.MS SQLite
DECLARE @Id  -- Int64
SET     @Id = 2
DECLARE @PermanentId  -- Guid
SET     @PermanentId = '8E215D1C-BE70-4909-BD26-16CF6B96E00D'
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'C2'
DECLARE @Name NVarChar(2) -- String
SET     @Name = 'N2'
DECLARE @IsDeleted  -- Boolean
SET     @IsDeleted = NULL

INSERT INTO [Subdivisions]
(
	[Id],
	[PermanentId],
	[Code],
	[Name],
	[IsDeleted]
)
VALUES
(
	@Id,
	@PermanentId,
	@Code,
	@Name,
	@IsDeleted
)



--  SQLite.MS SQLite

SELECT last_insert_rowid()



--  SQLite.MS SQLite
DECLARE @Id  -- Int64
SET     @Id = 3
DECLARE @PermanentId  -- Guid
SET     @PermanentId = 'DA673367-0A7D-4A5D-AF85-7AD1F6D4F12A'
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'C3'
DECLARE @Name NVarChar(2) -- String
SET     @Name = 'N3'
DECLARE @IsDeleted  -- Boolean
SET     @IsDeleted = NULL

INSERT INTO [Subdivisions]
(
	[Id],
	[PermanentId],
	[Code],
	[Name],
	[IsDeleted]
)
VALUES
(
	@Id,
	@PermanentId,
	@Code,
	@Name,
	@IsDeleted
)



--  SQLite.MS SQLite

SELECT last_insert_rowid()



SELECT "s"."Id", "s"."Code", "s"."IsDeleted", "s"."Name", "s"."PermanentId"
FROM "Subdivisions" AS "s"
WHERE CAST("s"."Id" AS INTEGER) = 1


--  SQLite.MS SQLite

SELECT
	[s].[Id],
	[s].[PermanentId],
	[s].[Code],
	[s].[Name],
	[s].[IsDeleted]
FROM
	[Subdivisions] [s]
WHERE
	CAST([s].[Id] AS BigInt) = 1



--  SQLite.MS SQLite
DECLARE @id  -- Int64
SET     @id = 1

SELECT
	[s].[Id],
	[s].[PermanentId],
	[s].[Code],
	[s].[Name],
	[s].[IsDeleted]
FROM
	[Subdivisions] [s]
WHERE
	[s].[Id] = @id



--  SQLite.MS SQLite

SELECT
	[s].[Id],
	[s].[PermanentId],
	[s].[Code],
	[s].[Name],
	[s].[IsDeleted]
FROM
	[Subdivisions] [s]
WHERE
	[s].[Id] IN (2, 3)



--  SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[PermanentId],
	[t1].[Code],
	[t1].[Name],
	[t1].[IsDeleted]
FROM
	[Subdivisions] [t1]



