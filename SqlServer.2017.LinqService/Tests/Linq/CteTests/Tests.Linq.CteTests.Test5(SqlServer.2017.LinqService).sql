BeforeExecute
-- SqlServer.2017 (asynchronously)

WITH [CTE_1] ([ParentID])
AS
(
	SELECT
		[t1].[ParentID]
	FROM
		(
			SELECT DISTINCT
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] > 1
		) [t1]
)
SELECT
	COUNT(*)
FROM
	[Parent] [p]
		INNER JOIN [CTE_1] [c_2] ON [p].[ParentID] = [c_2].[ParentID]
		INNER JOIN [CTE_1] [c2] ON [p].[ParentID] = [c2].[ParentID]

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Parent] [p]
		INNER JOIN (
			SELECT DISTINCT
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] > 1
		) [c_2] ON [p].[ParentID] = [c_2].[ParentID]
		INNER JOIN (
			SELECT DISTINCT
				[c2].[ParentID],
				[c2].[ChildID]
			FROM
				[Child] [c2]
			WHERE
				[c2].[ParentID] > 1
		) [c2_1] ON [p].[ParentID] = [c2_1].[ParentID]

