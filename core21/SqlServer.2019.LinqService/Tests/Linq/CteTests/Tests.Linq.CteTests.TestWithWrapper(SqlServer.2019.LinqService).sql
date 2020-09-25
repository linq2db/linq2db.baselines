BeforeExecute
-- SqlServer.2019 SqlServer.2017

WITH [CTE_1] ([Child_ParentID], [ChildID])
AS
(
	SELECT
		[child_1].[ParentID],
		[child_1].[ChildID]
	FROM
		[Child] [child_1]
)
SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[Child_ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [CTE_1] [c_1] ON [p].[ParentID] = [c_1].[Child_ParentID]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1],
	[child_1].[ParentID],
	[child_1].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [child_1] ON [p].[ParentID] = [child_1].[ParentID]

