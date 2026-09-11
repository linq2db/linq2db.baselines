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
	[t2].[Min_1],
	[t4].[Max_1],
	Coalesce([t6].[TotalMin], 0)
FROM
	[DurationRow] [t7]
		LEFT JOIN (
			SELECT
				MIN([t1].[InSeconds]) as [Min_1]
			FROM
				[DurationRow] [t1]
		) [t2] ON 1=1
		LEFT JOIN (
			SELECT
				MAX([t3].[InSeconds]) as [Max_1]
			FROM
				[DurationRow] [t3]
		) [t4] ON 1=1
		LEFT JOIN (
			SELECT
				SUM(CAST([t5].[InSeconds] AS Float) / 60) as [TotalMin]
			FROM
				[DurationRow] [t5]
		) [t6] ON 1=1

