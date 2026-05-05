-- SqlCe

SELECT
	Coalesce([t1].[Sum_1], 0) as [Sum_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Coalesce(SUM([a_Children].[ChildID]), 0) as [Sum_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 1 AND
				[a_Children].[ParentID] < 10
		) [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] > 1
	)

