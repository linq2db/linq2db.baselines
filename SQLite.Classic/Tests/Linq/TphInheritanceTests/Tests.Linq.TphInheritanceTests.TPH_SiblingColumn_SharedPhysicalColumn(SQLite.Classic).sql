-- SQLite.Classic SQLite
DECLARE @Kind NVarChar(2) -- String
SET     @Kind = 'S1'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(1) -- String
SET     @Code = 'a'

INSERT INTO [TphSharedColumn]
(
	[Kind],
	[Id],
	[SharedCode]
)
VALUES
(
	@Kind,
	@Id,
	@Code
)

-- SQLite.Classic SQLite
DECLARE @Kind NVarChar(2) -- String
SET     @Kind = 'S2'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Code NVarChar(1) -- String
SET     @Code = 'b'

INSERT INTO [TphSharedColumn]
(
	[Kind],
	[Id],
	[SharedCode]
)
VALUES
(
	@Kind,
	@Id,
	@Code
)

-- SQLite.Classic SQLite

SELECT
	[t1].[Kind],
	[t1].[Id],
	[t1].[SharedCode]
FROM
	[TphSharedColumn] [t1]
ORDER BY
	[t1].[Id]

