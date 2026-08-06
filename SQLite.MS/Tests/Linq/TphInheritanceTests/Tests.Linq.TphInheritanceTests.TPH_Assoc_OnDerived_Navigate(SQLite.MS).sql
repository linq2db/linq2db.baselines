-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Acme'

INSERT INTO [TphAssocCompany]
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
DECLARE @CompanyId  -- Int32
SET     @CompanyId = 1

INSERT INTO [TphAssocPerson]
(
	[Kind],
	[Id],
	[CompanyId]
)
VALUES
(
	@Kind,
	@Id,
	@CompanyId
)

-- SQLite.MS SQLite
DECLARE @Kind NVarChar(1) -- String
SET     @Kind = 'C'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Agency NVarChar(4) -- String
SET     @Agency = 'Temp'

INSERT INTO [TphAssocPerson]
(
	[Kind],
	[Id],
	[Agency]
)
VALUES
(
	@Kind,
	@Id,
	@Agency
)

-- SQLite.MS SQLite
DECLARE @Kind NVarChar(1) -- String
SET     @Kind = 'E'
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @CompanyId  -- Int32
SET     @CompanyId = NULL

INSERT INTO [TphAssocPerson]
(
	[Kind],
	[Id],
	[CompanyId]
)
VALUES
(
	@Kind,
	@Id,
	@CompanyId
)

-- SQLite.MS SQLite
SELECT
	[a_Company].[Name]
FROM
	[TphAssocPerson] [e]
		LEFT JOIN [TphAssocCompany] [a_Company] ON [e].[CompanyId] = [a_Company].[Id]
WHERE
	[e].[Kind] <> 'C' OR [e].[Kind] IS NULL
ORDER BY
	[e].[Id]

