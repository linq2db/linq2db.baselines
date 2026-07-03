-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite

SELECT
	[t1].[Kind],
	[t1].[Id],
	[t1].[CompanyId],
	[a_Company].[Id],
	[a_Company].[Name]
FROM
	[TphAssocPerson] [t1]
		LEFT JOIN [TphAssocCompany] [a_Company] ON [t1].[CompanyId] = [a_Company].[Id]
WHERE
	[t1].[Kind] <> 'C' OR [t1].[Kind] IS NULL
ORDER BY
	[t1].[Id]

