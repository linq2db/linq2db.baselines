-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2026-01-01T10:00:00.0000000' AS DATETIME2)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = CAST('2026-01-01T11:00:00.0000000' AS DATETIME2)
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

-- SqlServer.2008.MS SqlServer.2008
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

