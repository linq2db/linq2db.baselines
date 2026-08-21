-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 1, 11, 0, 0, 0, 7)
DECLARE @Budget BigInt -- Int64
SET     @Budget = 10800

INSERT INTO [BudgetedTaskRow]
(
	[Id],
	[StartedOn],
	[FinishedOn],
	[Budget]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Budget
)

-- SqlServer.2014.MS SqlServer.2014
WITH [CTE_1]
(
	[Id],
	[FinishedOn],
	[StartedOn],
	[Budget]
)
AS
(
	SELECT
		[r].[Id],
		[r].[FinishedOn],
		[r].[StartedOn],
		[r].[Budget]
	FROM
		[BudgetedTaskRow] [r]
)
SELECT TOP (2)
	[t1].[Id],
	[t1].[FinishedOn],
	[t1].[StartedOn],
	[t1].[Budget]
FROM
	[CTE_1] [t1]
ORDER BY
	[t1].[Id]

