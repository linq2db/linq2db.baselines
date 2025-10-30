BeforeExecute
-- SqlCe

SELECT
	MAX([t1].[ParentID]) as [Max_1]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Parent] [p]
				INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		WHERE
			[c_1].[ChildID] > 20
	) [t1]

