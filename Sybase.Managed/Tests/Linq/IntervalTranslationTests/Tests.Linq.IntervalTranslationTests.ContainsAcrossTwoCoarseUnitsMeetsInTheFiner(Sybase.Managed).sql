-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InDays BigInt -- Int64
SET     @InDays = 2
DECLARE @InMilliseconds BigInt -- Int64
SET     @InMilliseconds = 172800000
DECLARE @InNanoseconds BigInt -- Int64
SET     @InNanoseconds = 172800000000000

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

-- Sybase.Managed Sybase
SELECT
	[r].[Id]
FROM
	[UnitSpreadRow] [r]
WHERE
	[r].[InDays] * 86400000 IN (
		SELECT
			[x].[InMilliseconds]
		FROM
			[UnitSpreadRow] [x]
	)

-- Sybase.Managed Sybase
SELECT
	[r].[Id]
FROM
	[UnitSpreadRow] [r]
WHERE
	[r].[InMilliseconds] IN (
		SELECT
			[x].[InDays] * 86400000
		FROM
			[UnitSpreadRow] [x]
	)

