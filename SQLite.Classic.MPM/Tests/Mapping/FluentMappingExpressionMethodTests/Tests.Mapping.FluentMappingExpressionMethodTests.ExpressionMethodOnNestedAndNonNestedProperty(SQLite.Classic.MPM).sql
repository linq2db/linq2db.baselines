-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @TopSource NVarChar(3) -- String
SET     @TopSource = 'abc'
DECLARE @TopUpper NVarChar -- String
SET     @TopUpper = NULL
DECLARE @Part_Source NVarChar(3) -- String
SET     @Part_Source = 'xyz'
DECLARE @Part_Upper NVarChar -- String
SET     @Part_Upper = NULL

INSERT INTO [MixedExpr]
(
	[Id],
	[TopSource],
	[TopUpper],
	[Source],
	[Upper]
)
VALUES
(
	@Id,
	@TopSource,
	@TopUpper,
	@Part_Source,
	@Part_Upper
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[TopSource],
	[t1].[Source],
	Upper([t1].[Source]),
	Upper([t1].[TopSource])
FROM
	[MixedExpr] [t1]
LIMIT 2

