-- SqlServer.2025.MS SqlServer.2025
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[Child] [a_Children]
		WHERE
			[p_1].[ParentID] = [a_Children].[ParentID]
	)
FROM
	(
		SELECT TOP (@take)
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [p_1]
ORDER BY
	[p_1].[ParentID] DESC

