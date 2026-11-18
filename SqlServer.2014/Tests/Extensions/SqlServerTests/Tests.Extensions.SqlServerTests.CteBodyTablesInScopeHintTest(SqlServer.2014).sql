-- SqlServer.2014
WITH [CTE_1] ([ParentID])
AS
(
	SELECT
		[c_1].[ParentID]
	FROM
		[Child] [c_1] WITH (RowLock)
	WHERE
		[c_1].[ParentID] > 0
)
SELECT TOP (1)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (UpdLock),
	[CTE_1] [c_2]
WHERE
	[c_2].[ParentID] = [p].[ParentID]

