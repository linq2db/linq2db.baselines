-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '2026-06-01 10:00:00.000'
DECLARE @FinishedOn Text -- DateTime
SET     @FinishedOn = NULL

INSERT INTO [CoarseNullableEventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '2026-06-01 11:00:00.000'
DECLARE @FinishedOn VarChar(23) -- AnsiString
SET     @FinishedOn = '2026-06-01 13:00:00.000'

INSERT INTO [CoarseNullableEventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	(
		SELECT
			LAG([r].[StartedOn], 1, [r].[StartedOn]) OVER (ORDER BY [r].[Id]) as [Lag]
		FROM
			[CoarseNullableEventRow] [r]
	) [t1]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t1].[Lag]) < strftime('%Y-%m-%d %H:%M:%f', '2026-06-01 10:00:00.500')

