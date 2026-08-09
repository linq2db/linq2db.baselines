-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 5400

INSERT INTO [DurationRow]
(
	[Id],
	[InSeconds],
	[InTicks],
	[Undeclared],
	[UndeclaredSeconds]
)
VALUES
(
	@Id,
	@InSeconds,
	@InTicks,
	@Undeclared,
	@UndeclaredSeconds
)

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] * 10000000 = [r].[InTicks]

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[r].[Id]
FROM
	[DurationRow] [r]
WHERE
	[r].[InSeconds] * 10000000 > [r].[InTicks]

