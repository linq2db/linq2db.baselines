-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #1970-01-02#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #1970-02-03 04:05:06#

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
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #1970-01-02#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2045-06-05 04:03:02#

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
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #1970-01-02#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #1970-01-02 00:02:05#

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
	[r].[StartedOn],
	[r].[FinishedOn]
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('ms', DateDiff_Big('ms', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
			THEN DateDiff_Big('ms', [r].[StartedOn], [r].[FinishedOn]) - 1
		WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('ms', DateDiff_Big('ms', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
			THEN DateDiff_Big('ms', [r].[StartedOn], [r].[FinishedOn]) + 1
		ELSE DateDiff_Big('ms', [r].[StartedOn], [r].[FinishedOn])
	END MOD 1000
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

