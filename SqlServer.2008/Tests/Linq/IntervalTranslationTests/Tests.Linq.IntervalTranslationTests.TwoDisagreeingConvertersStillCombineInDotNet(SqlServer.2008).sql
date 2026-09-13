-- SqlServer.2008
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

-- SqlServer.2008
DECLARE @PlainValue BigInt -- Int64
SET     @PlainValue = 1800

SELECT TOP (2)
	[r].[Undeclared],
	[r].[UndeclaredSeconds],
	[r].[Undeclared] + [r].[Undeclared],
	[r].[InSeconds] + [r].[InSeconds],
	[r].[UndeclaredSeconds] + @PlainValue
FROM
	[DurationRow] [r]

