-- SQLite.MS SQLite
DECLARE @Kind NVarChar(2) -- String
SET     @Kind = 'T1'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(1) -- String
SET     @Code = 'a'

INSERT INTO [TphTriColumn]
(
	[Kind],
	[Id],
	[CodeA]
)
VALUES
(
	@Kind,
	@Id,
	@Code
)

-- SQLite.MS SQLite
DECLARE @Kind NVarChar(2) -- String
SET     @Kind = 'T2'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Code NVarChar(1) -- String
SET     @Code = 'b'

INSERT INTO [TphTriColumn]
(
	[Kind],
	[Id],
	[CodeB]
)
VALUES
(
	@Kind,
	@Id,
	@Code
)

-- SQLite.MS SQLite
DECLARE @Kind NVarChar(2) -- String
SET     @Kind = 'T3'
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Code NVarChar(1) -- String
SET     @Code = 'c'

INSERT INTO [TphTriColumn]
(
	[Kind],
	[Id],
	[CodeC]
)
VALUES
(
	@Kind,
	@Id,
	@Code
)

-- SQLite.MS SQLite

SELECT
	[t1].[Kind],
	[t1].[Id],
	[t1].[CodeB],
	[t1].[CodeC],
	[t1].[CodeA]
FROM
	[TphTriColumn] [t1]
ORDER BY
	[t1].[Id]

