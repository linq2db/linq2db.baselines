-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Acme'

INSERT INTO [TphMcCompany]
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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Kind NVarChar(2) -- String
SET     @Kind = 'E1'
DECLARE @RefId  -- Int32
SET     @RefId = 1

INSERT INTO [TphMcPerson]
(
	[Id],
	[Kind],
	[RefId]
)
VALUES
(
	@Id,
	@Kind,
	@RefId
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Kind NVarChar(2) -- String
SET     @Kind = 'E2'
DECLARE @RefId  -- Int32
SET     @RefId = 1

INSERT INTO [TphMcPerson]
(
	[Id],
	[Kind],
	[RefId]
)
VALUES
(
	@Id,
	@Kind,
	@RefId
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Kind NVarChar(1) -- String
SET     @Kind = 'C'
DECLARE @RefId  -- Int32
SET     @RefId = 1

INSERT INTO [TphMcPerson]
(
	[Id],
	[Kind],
	[RefId]
)
VALUES
(
	@Id,
	@Kind,
	@RefId
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[a_Company].[Name]
FROM
	[TphMcPerson] [x]
		LEFT JOIN [TphMcCompany] [a_Company] ON [x].[RefId] = [a_Company].[Id] AND ([x].[Kind] = 'E1' OR [x].[Kind] = 'E2')
ORDER BY
	[x].[Id]

