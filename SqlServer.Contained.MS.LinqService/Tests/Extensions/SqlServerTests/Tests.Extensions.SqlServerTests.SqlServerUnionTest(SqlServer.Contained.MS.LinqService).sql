BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
UNION
SELECT
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[Child] [p_1]
		LEFT JOIN [Parent] [a_Parent] ON [p_1].[ParentID] = [a_Parent].[ParentID]
OPTION (RECOMPILE)

