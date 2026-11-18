-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks  -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds  -- Int64
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @InSeconds  -- Int64
SET     @InSeconds = 1800
DECLARE @InTicks  -- Int64
SET     @InTicks = 18000000000
DECLARE @Undeclared  -- Int64
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds  -- Int64
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	(
		SELECT
			MIN([t4].[InSeconds])
		FROM
			[DurationRow] [t4]
	),
	(
		SELECT
			MAX([t5].[InSeconds])
		FROM
			[DurationRow] [t5]
	),
	CASE
		WHEN [t2].[TotalMin] IS NULL THEN 0
		ELSE [t2].[TotalMin]
	END
FROM
	[DurationRow] [t3]
		LEFT JOIN (
			SELECT
				SUM([t1].[InSeconds] / 60) as [TotalMin]
			FROM
				[DurationRow] [t1]
		) [t2] ON 1=1

