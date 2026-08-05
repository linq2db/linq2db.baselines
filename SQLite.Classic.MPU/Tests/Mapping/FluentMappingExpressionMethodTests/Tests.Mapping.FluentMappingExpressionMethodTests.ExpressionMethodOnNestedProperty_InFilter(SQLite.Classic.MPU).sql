-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Part_Source NVarChar(3) -- String
SET     @Part_Source = 'abc'

INSERT INTO [NestedExpr]
(
	[Id],
	[Source]
)
VALUES
(
	@Id,
	@Part_Source
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Part_Source NVarChar(3) -- String
SET     @Part_Source = 'xyz'

INSERT INTO [NestedExpr]
(
	[Id],
	[Source]
)
VALUES
(
	@Id,
	@Part_Source
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[Id]
FROM
	[NestedExpr] [e]
WHERE
	Upper([e].[Source]) = 'ABC'

