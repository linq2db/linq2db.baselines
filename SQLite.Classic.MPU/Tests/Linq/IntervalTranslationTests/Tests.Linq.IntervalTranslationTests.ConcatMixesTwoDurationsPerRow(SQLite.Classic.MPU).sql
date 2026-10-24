-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn VarChar(23) -- AnsiString
SET     @FinishedOn = '2026-01-01 11:00:00.000'
DECLARE @Budget  -- Int64
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

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Source],
	[t1].[First_1],
	[t1].[Second_1],
	[t1].[First_2],
	[t1].[Second_2]
FROM
	(
		SELECT
			CAST(1 AS INTEGER) as [Source],
			[r].[Budget] as [First_1],
			CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 as [Second_1],
			NULL as [First_2],
			NULL as [Second_2]
		FROM
			[BudgetedTaskRow] [r]
		UNION ALL
		SELECT
			CAST(2 AS INTEGER) as [Source],
			NULL as [First_1],
			NULL as [Second_1],
			CAST(Round((JulianDay([r_1].[FinishedOn]) - JulianDay([r_1].[StartedOn])) * 86400000) AS INTEGER) * 10000 as [First_2],
			[r_1].[Budget] as [Second_2]
		FROM
			[BudgetedTaskRow] [r_1]
	) [t1]
ORDER BY
	[t1].[Source]

