-- SqlServer.2017
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

-- SqlServer.2017
SELECT
	[r_2].[Source],
	[r_2].[Duration],
	[r_2].[Duration_1]
FROM
	(
		SELECT
			CAST(1 AS Int) as [Source],
			[r].[InSeconds] as [Duration],
			NULL as [Duration_1]
		FROM
			[DurationRow] [r]
		UNION ALL
		SELECT
			CAST(2 AS Int) as [Source],
			NULL as [Duration],
			[r_1].[InTicks] as [Duration_1]
		FROM
			[DurationRow] [r_1]
	) [r_2]
ORDER BY
	[r_2].[Source]

