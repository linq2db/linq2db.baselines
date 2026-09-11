-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Source],
	[t1].[Duration],
	[t1].[Duration_1]
FROM
	(
		SELECT
			1 as [Source],
			[r].[InSeconds] as [Duration],
			IIF(False, 0, NULL) as [Duration_1]
		FROM
			[DurationRow] [r]
		UNION ALL
		SELECT
			2 as [Source],
			IIF(False, 0, NULL) as [Duration],
			[r_1].[InTicks] as [Duration_1]
		FROM
			[DurationRow] [r_1]
	) [t1]
ORDER BY
	[t1].[Source]

