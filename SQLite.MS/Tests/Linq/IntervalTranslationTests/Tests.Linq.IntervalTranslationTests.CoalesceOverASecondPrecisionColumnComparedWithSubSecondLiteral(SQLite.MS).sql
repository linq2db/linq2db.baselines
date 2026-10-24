-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-06-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
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

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-06-01 11:00:00.000'
DECLARE @FinishedOn  -- DateTime
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

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', Coalesce([r].[FinishedOn], [r].[StartedOn])) < strftime('%Y-%m-%d %H:%M:%f', '2026-06-01 10:00:00.500')

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', '2026-06-01 10:00:00.500') > strftime('%Y-%m-%d %H:%M:%f', Coalesce([r].[FinishedOn], [r].[StartedOn]))

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', Coalesce([r].[FinishedOn], [r].[StartedOn])) = strftime('%Y-%m-%d %H:%M:%f', '2026-06-01 10:00:00.500')

