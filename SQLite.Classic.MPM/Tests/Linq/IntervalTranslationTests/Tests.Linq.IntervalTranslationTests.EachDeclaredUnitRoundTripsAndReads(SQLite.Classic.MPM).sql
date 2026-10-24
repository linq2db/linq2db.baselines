-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InDays  -- Int64
SET     @InDays = 2
DECLARE @InMilliseconds  -- Int64
SET     @InMilliseconds = 3723456
DECLARE @InNanoseconds  -- Int64
SET     @InNanoseconds = 7000123400

INSERT INTO [UnitSpreadRow]
(
	[Id],
	[InDays],
	[InMilliseconds],
	[InNanoseconds]
)
VALUES
(
	@Id,
	@InDays,
	@InMilliseconds,
	@InNanoseconds
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[InDays],
	[t1].[InMilliseconds],
	[t1].[InNanoseconds]
FROM
	[UnitSpreadRow] [t1]
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CAST([r].[InDays] * 24 AS Float),
	CAST(([r].[InMilliseconds] / 1000) % 60 AS INTEGER)
FROM
	[UnitSpreadRow] [r]
LIMIT 2

