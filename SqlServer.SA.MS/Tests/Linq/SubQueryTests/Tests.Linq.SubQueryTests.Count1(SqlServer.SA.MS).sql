BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p_1].[ParentID],
	[p_1].[Sum_1] / 2
FROM
	(
		SELECT
			(
				SELECT
					Sum([a_Children].[ParentID])
				FROM
					[Child] [a_Children]
				WHERE
					[a_Children].[ParentID] > 0 AND [p].[ParentID] = [a_Children].[ParentID]
			) as [Sum_1],
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [p_1]
WHERE
	[p_1].[Sum_1] / 2 > 1

