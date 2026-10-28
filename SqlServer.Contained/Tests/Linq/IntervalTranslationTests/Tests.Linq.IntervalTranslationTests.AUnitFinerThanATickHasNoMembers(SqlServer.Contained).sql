-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InDays BigInt -- Int64
SET     @InDays = 0
DECLARE @InMilliseconds BigInt -- Int64
SET     @InMilliseconds = 0
DECLARE @InNanoseconds BigInt -- Int64
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

-- SqlServer.Contained SqlServer.2019
SELECT TOP (2)
	[r].[InNanoseconds]
FROM
	[UnitSpreadRow] [r]

-- SqlServer.Contained SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[InDays],
	[t1].[InMilliseconds],
	[t1].[InNanoseconds]
FROM
	[UnitSpreadRow] [t1]

