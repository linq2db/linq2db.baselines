-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = NULL
DECLARE @FinishedOn DateTime
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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn DateTime
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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn DateTime
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

-- Sybase.Managed Sybase
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

