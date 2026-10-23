-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InDays  -- Int64
SET     @InDays = 0
DECLARE @InMilliseconds  -- Int64
SET     @InMilliseconds = 0
DECLARE @InNanoseconds  -- Int64
SET     @InNanoseconds = 7000000000

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
	[r].[InNanoseconds]
FROM
	[UnitSpreadRow] [r]
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[InDays],
	[t1].[InMilliseconds],
	[t1].[InNanoseconds]
FROM
	[UnitSpreadRow] [t1]
LIMIT 2

