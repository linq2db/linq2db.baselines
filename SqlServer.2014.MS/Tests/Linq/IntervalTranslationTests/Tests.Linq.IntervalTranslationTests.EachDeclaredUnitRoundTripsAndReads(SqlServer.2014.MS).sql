-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InDays BigInt -- Int64
SET     @InDays = 2
DECLARE @InMilliseconds BigInt -- Int64
SET     @InMilliseconds = 3723456
DECLARE @InNanoseconds BigInt -- Int64
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

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	[t1].[Id],
	[t1].[InDays],
	[t1].[InMilliseconds],
	[t1].[InNanoseconds]
FROM
	[UnitSpreadRow] [t1]

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	CAST([r].[InDays] * 24 AS Float),
	CAST(([r].[InMilliseconds] / 1000) % 60 AS Int)
FROM
	[UnitSpreadRow] [r]

