BeforeExecute
-- SqlServer.2019
DECLARE @groupId Int -- Int32
SET     @groupId = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[a_Parent].[ParentID]
		FROM
			[Child] [g_1]
				LEFT JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
		GROUP BY
			[g_1].[ChildID],
			[a_Parent].[ParentID]
	) [t1]
WHERE
	[t1].[ParentID] = @groupId

