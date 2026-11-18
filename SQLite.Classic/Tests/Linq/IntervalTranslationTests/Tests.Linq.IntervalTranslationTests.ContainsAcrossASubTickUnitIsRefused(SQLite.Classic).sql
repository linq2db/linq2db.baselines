-- SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InDays Integer -- Int64
SET     @InDays = 0
DECLARE @InMilliseconds Integer -- Int64
SET     @InMilliseconds = 7000
DECLARE @InNanoseconds Integer -- Int64
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

-- SQLite.Classic SQLite
SELECT
	[r].[InNanoseconds]
FROM
	[UnitSpreadRow] [r]
LIMIT 2

