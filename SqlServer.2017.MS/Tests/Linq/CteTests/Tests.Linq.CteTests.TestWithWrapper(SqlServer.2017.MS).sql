-- SqlServer.2017.MS SqlServer.2017

WITH [CTE_1] ([Child_ParentID], [Child_ChildID])
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
	[c_1].[Child_ChildID]
FROM
	[Parent] [p]
		INNER JOIN [CTE_1] [c_1] ON [p].[ParentID] = [c_1].[Child_ParentID]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

