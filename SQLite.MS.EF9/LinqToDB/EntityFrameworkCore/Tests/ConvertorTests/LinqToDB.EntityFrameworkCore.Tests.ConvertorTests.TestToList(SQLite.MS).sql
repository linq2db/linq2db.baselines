--  SQLite.MS SQLite
DECLARE @Id  -- Int64
SET     @Id = 1
DECLARE @PermanentId  -- Guid
SET     @PermanentId = 'D8D1FFBD-607A-4F88-AC6A-E0A8E0DF68AA'
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
SET     @PermanentId = 'BC782E6A-B064-41EC-B2DA-373C23EE5C11'
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
SET     @PermanentId = '7DB3EDFB-B757-4FDE-9A46-725F2DEDFBD9'
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



