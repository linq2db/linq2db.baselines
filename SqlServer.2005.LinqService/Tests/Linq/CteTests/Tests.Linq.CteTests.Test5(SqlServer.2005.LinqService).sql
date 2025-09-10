BeforeExecute
-- SqlServer.2005 (asynchronously)

WITH [CTE_1] ([ParentID])
AS
(
	SELECT
		[c_1].[ParentID]
	FROM
		[Child] [c_1]
	WHERE
		[c_1].[ParentID] > 1
)
SELECT
	COUNT(*)
FROM
	[Parent] [p]
		INNER JOIN [CTE_1] [c_2] ON [p].[ParentID] = [c_2].[ParentID]
		INNER JOIN [CTE_1] [c2] ON [p].[ParentID] = [c2].[ParentID]

BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		INNER JOIN [Child] [c2] ON [p].[ParentID] = [c2].[ParentID]
WHERE
	[c_1].[ParentID] > 1 AND [c2].[ParentID] > 1

