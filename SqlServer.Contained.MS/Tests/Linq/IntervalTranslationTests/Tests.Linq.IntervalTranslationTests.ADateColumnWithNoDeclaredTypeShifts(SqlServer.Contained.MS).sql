-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @When DateTime2
SET     @When = DATETIME2FROMPARTS(2026, 3, 1, 0, 0, 0, 0, 7)
DECLARE @Elapsed BigInt -- Int64
SET     @Elapsed = 5400

INSERT INTO [PlainDateRow]
(
	[Id],
	[When],
	[Elapsed]
)
VALUES
(
	@Id,
	@When,
	@Elapsed
)

-- SqlServer.Contained.MS SqlServer.2019
SELECT TOP (2)
	DateAdd(nanosecond, CAST((([r].[Elapsed] * 10000000) % 10000000) * 100 AS Int), DateAdd(second, CAST((([r].[Elapsed] * 10000000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(([r].[Elapsed] * 10000000) / 864000000000 AS Int), [r].[When])))
FROM
	[PlainDateRow] [r]

