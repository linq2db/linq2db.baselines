-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-06-01 10:00:00.000'
DECLARE @FinishedOn DateTime
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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-06-01 11:00:00.000'
DECLARE @FinishedOn DateTime
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

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	Coalesce([r].[FinishedOn], [r].[StartedOn]) < '2026-06-01 10:00:00.500'

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	'2026-06-01 10:00:00.500' > Coalesce([r].[FinishedOn], [r].[StartedOn])

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	Coalesce([r].[FinishedOn], [r].[StartedOn]) = '2026-06-01 10:00:00.500'

