BeforeExecute
-- SqlServer.2014
DECLARE @groupId Int -- Int32
SET     @groupId = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[Child] [g_1]
				LEFT JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
		GROUP BY
			[g_1].[ChildID],
			[a_Parent].[ParentID]
		HAVING
			[a_Parent].[ParentID] = @groupId
	) [t1]

