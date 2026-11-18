-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Text(23) -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn Text(23) -- DateTime
SET     @FinishedOn = '2026-01-01 11:00:00.000'
DECLARE @Budget Integer -- Int64
SET     @Budget = 10800

INSERT INTO [BudgetedTaskRow]
(
	[Id],
	[StartedOn],
	[FinishedOn],
	[Budget]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Budget
)

-- SQLite.MS SQLite
SELECT
	[t1].[Source],
	[t1].[Duration]
FROM
	(
		SELECT
			CAST(1 AS INTEGER) as [Source],
			CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 as [Duration]
		FROM
			[BudgetedTaskRow] [r]
		UNION ALL
		SELECT
			CAST(2 AS INTEGER) as [Source],
			CAST(Round((JulianDay([r_1].[FinishedOn]) - JulianDay([r_1].[StartedOn])) * 86400000) AS INTEGER) * 10000 as [Duration]
		FROM
			[BudgetedTaskRow] [r_1]
	) [t1]
ORDER BY
	[t1].[Source]

