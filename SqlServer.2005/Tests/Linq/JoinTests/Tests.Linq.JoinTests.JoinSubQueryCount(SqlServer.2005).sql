-- SqlServer.2005
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] <> [p].[ParentID] * 10 + @n
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 0

