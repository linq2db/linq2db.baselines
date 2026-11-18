-- SqlCe
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

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 1800
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 18000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 1800

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

-- SqlCe
SELECT TOP (1)
	[t2].[Seconds],
	[t4].[Ticks],
	[t6].[Converted],
	[t8].[Largest]
FROM
	[DurationRow] [t9]
		LEFT JOIN (
			SELECT
				MIN([t1].[InSeconds]) as [Seconds]
			FROM
				[DurationRow] [t1]
		) [t2] ON 1=1
		LEFT JOIN (
			SELECT
				MIN([t3].[InTicks]) as [Ticks]
			FROM
				[DurationRow] [t3]
		) [t4] ON 1=1
		LEFT JOIN (
			SELECT
				MIN([t5].[UndeclaredSeconds]) as [Converted]
			FROM
				[DurationRow] [t5]
		) [t6] ON 1=1
		LEFT JOIN (
			SELECT
				MAX([t7].[InSeconds]) as [Largest]
			FROM
				[DurationRow] [t7]
		) [t8] ON 1=1

