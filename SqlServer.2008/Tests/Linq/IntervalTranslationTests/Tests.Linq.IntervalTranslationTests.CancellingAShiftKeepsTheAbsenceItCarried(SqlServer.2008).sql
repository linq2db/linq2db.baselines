-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = NULL
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = CAST('2026-01-03T13:30:00.0000000' AS DATETIME2)

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

-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2026-01-01T10:00:00.0000000' AS DATETIME2)
DECLARE @FinishedOn DateTime2
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

-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2026-01-01T10:00:00.0000000' AS DATETIME2)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = CAST('2026-01-03T13:30:00.0000000' AS DATETIME2)

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

-- SqlServer.2008
SELECT
	[r].[Id],
	[r].[StartedOn],
	[r].[FinishedOn]
FROM
	[OptionalEventRow] [r]
ORDER BY
	[r].[Id]

