BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = NULL
DECLARE @p_1 Int -- Int32
SET     @p_1 = NULL
DECLARE @p_2 Int -- Int32
SET     @p_2 = NULL

SELECT
	[p].[ParentID],
	IIF([p].[ParentID] IS NOT NULL, [p].[Value1], @p),
	IIF([c_1].[ParentID] IS NOT NULL, IIF([a_Parent].[ParentID] IS NOT NULL, [a_Parent].[Value1], @p_1), @p_2)
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [c_1].[ParentID] = [p].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	([p].[ParentID] > 0 OR [p].[Value1] > 0 OR [a_Parent].[Value1] > 0)

