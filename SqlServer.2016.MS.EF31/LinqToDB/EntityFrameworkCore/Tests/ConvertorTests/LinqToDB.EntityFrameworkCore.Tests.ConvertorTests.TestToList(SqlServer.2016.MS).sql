--  SqlServer.2016
DECLARE @Id BigInt -- Int64
SET     @Id = 1
DECLARE @PermanentId UniqueIdentifier -- Guid
SET     @PermanentId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
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



--  SqlServer.2016
DECLARE @Id BigInt -- Int64
SET     @Id = 2
DECLARE @PermanentId UniqueIdentifier -- Guid
SET     @PermanentId = 'a948600d-de21-4f74-8ac2-9516b287076e'
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



--  SqlServer.2016
DECLARE @Id BigInt -- Int64
SET     @Id = 3
DECLARE @PermanentId UniqueIdentifier -- Guid
SET     @PermanentId = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
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


SELECT [s].[Id], [s].[Code], [s].[IsDeleted], [s].[Name], [s].[PermanentId]
FROM [Subdivisions] AS [s]


--  SqlServer.2016
DECLARE @Id BigInt -- Int64
SET     @Id = 1
DECLARE @Id_1 BigInt -- Int64
SET     @Id_1 = 2
DECLARE @Id_2 BigInt -- Int64
SET     @Id_2 = 3

SELECT
	[s].[Id],
	[s].[PermanentId],
	[s].[Code],
	[s].[Name],
	[s].[IsDeleted]
FROM
	(VALUES
		(@Id,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',N'C1',N'N1',NULL),
		(@Id_1,'a948600d-de21-4f74-8ac2-9516b287076e',N'C2',N'N2',NULL),
		(@Id_2,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627',N'C3',N'N3',NULL)
	) [s]([Id], [PermanentId], [Code], [Name], [IsDeleted])
WHERE
	CAST([s].[Id] AS BigInt) = 1



SELECT [s].[Id], [s].[Code], [s].[IsDeleted], [s].[Name], [s].[PermanentId]
FROM [Subdivisions] AS [s]


--  SqlServer.2016
DECLARE @Id BigInt -- Int64
SET     @Id = 1
DECLARE @Id_1 BigInt -- Int64
SET     @Id_1 = 2
DECLARE @Id_2 BigInt -- Int64
SET     @Id_2 = 3
DECLARE @id_3 BigInt -- Int64
SET     @id_3 = 1

SELECT
	[s].[Id],
	[s].[PermanentId],
	[s].[Code],
	[s].[Name],
	[s].[IsDeleted]
FROM
	(VALUES
		(@Id,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',N'C1',N'N1',NULL),
		(@Id_1,'a948600d-de21-4f74-8ac2-9516b287076e',N'C2',N'N2',NULL),
		(@Id_2,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627',N'C3',N'N3',NULL)
	) [s]([Id], [PermanentId], [Code], [Name], [IsDeleted])
WHERE
	[s].[Id] = @id_3



SELECT [s].[Id], [s].[Code], [s].[IsDeleted], [s].[Name], [s].[PermanentId]
FROM [Subdivisions] AS [s]


--  SqlServer.2016
DECLARE @Id BigInt -- Int64
SET     @Id = 1
DECLARE @Id_1 BigInt -- Int64
SET     @Id_1 = 2
DECLARE @Id_2 BigInt -- Int64
SET     @Id_2 = 3

SELECT
	[s].[Id],
	[s].[PermanentId],
	[s].[Code],
	[s].[Name],
	[s].[IsDeleted]
FROM
	(VALUES
		(@Id,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',N'C1',N'N1',NULL),
		(@Id_1,'a948600d-de21-4f74-8ac2-9516b287076e',N'C2',N'N2',NULL),
		(@Id_2,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627',N'C3',N'N3',NULL)
	) [s]([Id], [PermanentId], [Code], [Name], [IsDeleted])
WHERE
	[s].[Id] IN (2, 3)



--  SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[PermanentId],
	[t1].[Code],
	[t1].[Name],
	[t1].[IsDeleted]
FROM
	[Subdivisions] [t1]



