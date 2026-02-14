-- SqlServer.2025
DECLARE @n Int -- Int32
SET     @n = 2

SELECT
	(
		SELECT
			COUNT(*) as [Count7]
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	) + @n
FROM
	[Parent] [p]

