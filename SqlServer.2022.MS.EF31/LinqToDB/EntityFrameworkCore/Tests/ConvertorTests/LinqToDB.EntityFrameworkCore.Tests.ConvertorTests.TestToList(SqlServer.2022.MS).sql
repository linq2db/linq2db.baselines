--  SqlServer.2008
DECLARE @Id BigInt -- Int64
SET     @Id = 1
DECLARE @PermanentId UniqueIdentifier -- Guid
SET     @PermanentId = 'c4679173-8dd5-4eef-8288-7e9cc01c6b36'
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
SET     @PermanentId = '16eb0087-5f07-472c-ac05-fde5d1d7d01e'
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
SET     @PermanentId = '953953c1-a553-4615-a4ac-0f0c61890910'
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



