-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = #1970-01-02#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #1970-01-02 00:02:05#

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = #1970-01-02#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #2045-06-05 04:03:02#

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP 2
	IIF([r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('s', CDbl(DateDiff('d', [r].[StartedOn], [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn], (CDbl(DateDiff('d', [r].[StartedOn], [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn])) - 1, IIF([r].[FinishedOn] < [r].[StartedOn] AND DateAdd('s', CDbl(DateDiff('d', [r].[StartedOn], [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn], CDbl(DateDiff('d', [r].[StartedOn], [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) + 1, CDbl(DateDiff('d', [r].[StartedOn], [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]))) MOD 60
FROM
	[EventRow] [r]
WHERE
	[r].[Id] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 2

SELECT TOP 2
	IIF([r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('s', CDbl(DateDiff('d', [r].[StartedOn], [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn], (CDbl(DateDiff('d', [r].[StartedOn], [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn])) - 1, IIF([r].[FinishedOn] < [r].[StartedOn] AND DateAdd('s', CDbl(DateDiff('d', [r].[StartedOn], [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn], CDbl(DateDiff('d', [r].[StartedOn], [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) + 1, CDbl(DateDiff('d', [r].[StartedOn], [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]))) MOD 60
FROM
	[EventRow] [r]
WHERE
	[r].[Id] = ?

