-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Acme'

INSERT INTO [TphRefCompany]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SQLite.MS SQLite
DECLARE @Kind NVarChar(1) -- String
SET     @Kind = 'E'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @RefId  -- Int32
SET     @RefId = 1

INSERT INTO [TphRefPerson]
(
	[Kind],
	[Id],
	[RefId]
)
VALUES
(
	@Kind,
	@Id,
	@RefId
)

-- SQLite.MS SQLite
DECLARE @Kind NVarChar(1) -- String
SET     @Kind = 'C'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @RefId  -- Int32
SET     @RefId = 1

INSERT INTO [TphRefPerson]
(
	[Kind],
	[Id],
	[RefId]
)
VALUES
(
	@Kind,
	@Id,
	@RefId
)

-- SQLite.MS SQLite
SELECT
	[a_Company].[Name]
FROM
	[TphRefPerson] [x]
		LEFT JOIN [TphRefCompany] [a_Company] ON [x].[RefId] = [a_Company].[Id] AND [x].[Kind] = 'E'
ORDER BY
	[x].[Id]

