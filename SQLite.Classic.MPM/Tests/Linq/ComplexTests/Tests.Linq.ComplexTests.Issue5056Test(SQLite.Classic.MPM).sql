-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ComplexType NVarChar(8) -- String
SET     @ComplexType = '{"Id":2}'

INSERT INTO [Table]
(
	[Id],
	[ComplexType]
)
VALUES
(
	1,
	@ComplexType
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[ComplexType]
FROM
	[Table] [t1]
LIMIT 2

