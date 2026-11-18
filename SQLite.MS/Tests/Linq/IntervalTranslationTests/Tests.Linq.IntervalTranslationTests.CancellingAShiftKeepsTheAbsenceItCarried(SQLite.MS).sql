-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn Text -- DateTime
SET     @StartedOn = NULL
DECLARE @FinishedOn Text(23) -- DateTime
SET     @FinishedOn = '2026-01-03 13:30:00.000'

INSERT INTO [OptionalEventRow]
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
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn Text(23) -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn Text -- DateTime
SET     @FinishedOn = NULL

INSERT INTO [OptionalEventRow]
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
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @StartedOn Text(23) -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn Text(23) -- DateTime
SET     @FinishedOn = '2026-01-03 13:30:00.000'

INSERT INTO [OptionalEventRow]
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
	[r].[Id],
	CASE
		WHEN [r].[StartedOn] IS NULL THEN NULL
		ELSE [r].[FinishedOn]
	END,
	CASE
		WHEN [r].[FinishedOn] IS NULL THEN NULL
		ELSE [r].[StartedOn]
	END
FROM
	[OptionalEventRow] [r]
ORDER BY
	[r].[Id]

