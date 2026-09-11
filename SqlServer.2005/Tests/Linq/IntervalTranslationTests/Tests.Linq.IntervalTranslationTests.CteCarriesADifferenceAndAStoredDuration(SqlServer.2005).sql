-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-01-01T10:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-01-01T11:00:00.000' AS DATETIME)
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

-- SqlServer.2005
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

