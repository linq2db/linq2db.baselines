-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Part_Source NVarChar(3) -- String
SET     @Part_Source = 'abc'
DECLARE @Part_Upper NVarChar -- String
SET     @Part_Upper = NULL

INSERT INTO [NestedExpr]
(
	[Id],
	[Source],
	[Upper]
)
VALUES
(
	@Id,
	@Part_Source,
	@Part_Upper
)

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Source],
	Upper([t1].[Source])
FROM
	[NestedExpr] [t1]
LIMIT 2

