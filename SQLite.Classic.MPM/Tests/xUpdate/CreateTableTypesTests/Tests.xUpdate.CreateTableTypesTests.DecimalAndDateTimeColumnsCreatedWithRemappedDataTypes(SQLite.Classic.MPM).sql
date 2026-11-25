-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @decValue Decimal(9, 4)
SET     @decValue = 12345.6789
DECLARE @dtValue Integer -- Int64
SET     @dtValue = 123456789

INSERT INTO [RemappedTypesTable]
(
	[Decimal1],
	[Decimal2],
	[Decimal3],
	[DateTime]
)
VALUES
(
	@decValue,
	@decValue,
	@decValue,
	@dtValue
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Decimal1],
	[t1].[Decimal2],
	[t1].[Decimal3],
	[t1].[DateTime]
FROM
	[RemappedTypesTable] [t1]
LIMIT 2

