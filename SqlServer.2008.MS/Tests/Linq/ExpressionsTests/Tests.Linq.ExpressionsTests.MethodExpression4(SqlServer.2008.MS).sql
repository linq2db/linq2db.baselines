-- SqlServer.2008.MS SqlServer.2008
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] > @n
	) + 4
FROM
	[Parent] [p]

