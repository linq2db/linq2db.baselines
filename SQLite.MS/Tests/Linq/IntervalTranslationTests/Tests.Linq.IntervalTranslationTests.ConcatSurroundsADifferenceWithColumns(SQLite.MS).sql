-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
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

-- SQLite.MS SQLite
SELECT
	[t2].[c1],
	[t2].[Source],
	[t2].[Duration],
	[t2].[Source_1],
	[t2].[Duration_1],
	[t2].[Source_2],
	[t2].[Duration_2]
FROM
	(
		SELECT
			[t1].[Source] = [t1].[c1] as [c1],
			[t1].[Source],
			[t1].[Duration],
			[t1].[Source] as [Source_1],
			[t1].[Duration_1],
			NULL as [Source_2],
			NULL as [Duration_2]
		FROM
			(
				SELECT
					CAST(1 AS INTEGER) as [Source],
					CAST(1 AS INTEGER) as [c1],
					[r].[Budget] as [Duration],
					NULL as [Duration_1]
				FROM
					[BudgetedTaskRow] [r]
				UNION ALL
				SELECT
					CAST(2 AS INTEGER) as [Source],
					CAST(1 AS INTEGER) as [c1],
					NULL as [Duration],
					CAST(Round((JulianDay([r_1].[FinishedOn]) - JulianDay([r_1].[StartedOn])) * 86400000) AS INTEGER) * 10000 as [Duration_1]
				FROM
					[BudgetedTaskRow] [r_1]
			) [t1]
		UNION ALL
		SELECT
			NULL as [c1],
			NULL as [Source],
			NULL as [Duration],
			NULL as [Source_1],
			NULL as [Duration_1],
			CAST(3 AS INTEGER) as [Source_2],
			[r_2].[Budget] as [Duration_2]
		FROM
			[BudgetedTaskRow] [r_2]
	) [t2]
ORDER BY
	CASE
		WHEN [t2].[c1] IS NOT NULL THEN CASE
			WHEN [t2].[c1] THEN [t2].[Source]
			ELSE [t2].[Source_1]
		END
		ELSE [t2].[Source_2]
	END

