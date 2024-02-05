BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p_1].[ParentID],
	[p_1].[Sum_1_1]
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
			) / 2 as [Sum_1],
			[p].[ParentID],
			(
				SELECT
					Sum([t].[ParentID])
				FROM
					[Child] [t]
				WHERE
					[p].[ParentID] = [t].[ParentID] AND [t].[ParentID] > 0
			) as [Sum_1_1]
		FROM
			[Parent] [p]
	) [p_1]
WHERE
	[p_1].[Sum_1] > 1

