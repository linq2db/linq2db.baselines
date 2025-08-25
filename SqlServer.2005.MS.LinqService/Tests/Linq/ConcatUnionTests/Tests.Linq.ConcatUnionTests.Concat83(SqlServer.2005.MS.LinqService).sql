BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[c_1].[ParentID],
	[c_1].[ParentID],
	Coalesce([c_1].[Value1], 0)
FROM
	[Parent] [c_1]
UNION ALL
SELECT
	[c_2].[ParentID],
	[c_2].[ChildID],
	[c_2].[ParentID] + 1
FROM
	[Child] [c_2]

