-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Mid_Leaf_Source NVarChar(3) -- String
SET     @Mid_Leaf_Source = 'abc'
DECLARE @Mid_Leaf_Upper NVarChar -- String
SET     @Mid_Leaf_Upper = NULL

INSERT INTO [DeepNestedExpr]
(
	[Id],
	[Source],
	[Upper]
)
VALUES
(
	@Id,
	@Mid_Leaf_Source,
	@Mid_Leaf_Upper
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Source],
	Upper([t1].[Source])
FROM
	[DeepNestedExpr] [t1]
LIMIT 2

