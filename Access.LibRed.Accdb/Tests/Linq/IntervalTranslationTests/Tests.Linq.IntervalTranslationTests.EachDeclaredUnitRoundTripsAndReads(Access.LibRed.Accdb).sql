-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[InDays],
	[t1].[InMilliseconds],
	[t1].[InNanoseconds]
FROM
	[UnitSpreadRow] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[r].[InDays] * 24,
	Fix([r].[InMilliseconds] / 1000) MOD 60
FROM
	[UnitSpreadRow] [r]

