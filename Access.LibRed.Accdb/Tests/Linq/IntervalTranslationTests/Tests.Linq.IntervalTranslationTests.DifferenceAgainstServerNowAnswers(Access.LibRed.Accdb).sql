-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2025-06-01 10:00:00#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2025-06-01 10:00:00#

INSERT INTO [EventRow]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[EventRow] [r]
WHERE
	DateDiff_Big('d', [r].[StartedOn], Now) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], Now), [r].[StartedOn]), Now) / 86400000 > 1

