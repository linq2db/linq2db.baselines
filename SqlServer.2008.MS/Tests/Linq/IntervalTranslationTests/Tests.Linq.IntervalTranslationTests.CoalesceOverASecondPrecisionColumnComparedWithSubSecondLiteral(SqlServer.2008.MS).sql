-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-06-01T10:00:00.0000000' AS DATETIME2)
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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-06-01T11:00:00.0000000' AS DATETIME2)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-06-01T13:00:00.0000000' AS DATETIME2)

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

-- SqlServer.2008.MS SqlServer.2008
SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	Coalesce([r].[FinishedOn], [r].[StartedOn]) < CAST('2026-06-01T10:00:00.5000000' AS DATETIME2)

-- SqlServer.2008.MS SqlServer.2008
SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	CAST('2026-06-01T10:00:00.5000000' AS DATETIME2) > Coalesce([r].[FinishedOn], [r].[StartedOn])

-- SqlServer.2008.MS SqlServer.2008
SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	Coalesce([r].[FinishedOn], [r].[StartedOn]) = CAST('2026-06-01T10:00:00.5000000' AS DATETIME2)

