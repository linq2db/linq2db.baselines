BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ChildID]
		FROM
			[Child] [t1]
		ORDER BY
			[t1].[ParentID],
			[t1].[ChildID]
		OFFSET 2 ROWS
	) [t2]

