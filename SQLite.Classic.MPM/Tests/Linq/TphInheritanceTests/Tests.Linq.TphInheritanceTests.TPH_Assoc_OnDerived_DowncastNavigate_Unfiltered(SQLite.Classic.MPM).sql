-- SQLite.Classic.MPM SQLite.Classic SQLite
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[a_Company].[Name]
FROM
	[TphAssocPerson] [x]
		LEFT JOIN [TphAssocCompany] [a_Company] ON [x].[CompanyId] = [a_Company].[Id] AND [x].[Kind] = 'E'
ORDER BY
	[x].[Id]

