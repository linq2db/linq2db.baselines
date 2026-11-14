-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-06-01 10:00:00#
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-06-01 11:00:00#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-06-01 13:00:00#

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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2026-06-01 10:00:00#

SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	IIF([r].[FinishedOn] IS NULL, [r].[StartedOn], [r].[FinishedOn]) < @value

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2026-06-01 10:00:00#

SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	@value > IIF([r].[FinishedOn] IS NULL, [r].[StartedOn], [r].[FinishedOn])

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2026-06-01 10:00:00#

SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	IIF([r].[FinishedOn] IS NULL, [r].[StartedOn], [r].[FinishedOn]) = @value

