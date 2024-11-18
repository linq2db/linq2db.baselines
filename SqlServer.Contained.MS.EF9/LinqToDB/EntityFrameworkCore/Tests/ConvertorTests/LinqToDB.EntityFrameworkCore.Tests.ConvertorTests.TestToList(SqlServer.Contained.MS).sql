--  SqlServer.2008
DECLARE @Id BigInt -- Int64
SET     @Id = 1
DECLARE @PermanentId UniqueIdentifier -- Guid
SET     @PermanentId = 'b7ba8956-c315-49d6-8199-cfe24459f346'
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'C1'
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'N1'
DECLARE @IsDeleted Bit -- Boolean
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

SELECT SCOPE_IDENTITY()



--  SqlServer.2008
DECLARE @Id BigInt -- Int64
SET     @Id = 2
DECLARE @PermanentId UniqueIdentifier -- Guid
SET     @PermanentId = '933d5170-1ee3-44f7-959d-93bb5374fc50'
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'C2'
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'N2'
DECLARE @IsDeleted Bit -- Boolean
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

SELECT SCOPE_IDENTITY()



--  SqlServer.2008
DECLARE @Id BigInt -- Int64
SET     @Id = 3
DECLARE @PermanentId UniqueIdentifier -- Guid
SET     @PermanentId = 'b1625261-9d2d-4a89-8cb5-640f4a2be9ca'
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'C3'
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'N3'
DECLARE @IsDeleted Bit -- Boolean
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

SELECT SCOPE_IDENTITY()



SELECT [s].[Id], [s].[Code], [s].[IsDeleted], [s].[Name], [s].[PermanentId]
FROM [Subdivisions] AS [s]
WHERE CAST([s].[Id] AS bigint) = CAST(1 AS bigint)


--  SqlServer.2008

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



--  SqlServer.2008
DECLARE @id BigInt -- Int64
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



--  SqlServer.2008

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



--  SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[PermanentId],
	[t1].[Code],
	[t1].[Name],
	[t1].[IsDeleted]
FROM
	[Subdivisions] [t1]



