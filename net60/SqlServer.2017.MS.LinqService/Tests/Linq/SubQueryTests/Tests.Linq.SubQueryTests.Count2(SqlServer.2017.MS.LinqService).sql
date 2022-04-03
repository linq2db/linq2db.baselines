BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p_1].[ParentID],
	[p_1].[Sum_1]
FROM
	(
		SELECT
			(
				SELECT
					Sum([t].[ParentID])
				FROM
					[Child] [t]
				WHERE
					[p].[ParentID] = [t].[ParentID] AND [t].[ParentID] > 0
			) / 2 as [Value1],
			[p].[ParentID],
			(
				SELECT
					Sum([t].[ParentID])
				FROM
					[Child] [t]
				WHERE
					[p].[ParentID] = [t].[ParentID] AND [t].[ParentID] > 0
			) as [Sum_1]
		FROM
			[Parent] [p]
	) [p_1]
WHERE
	[p_1].[Value1] > 1

