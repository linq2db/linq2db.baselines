BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ChildID]
		FROM
			[Child] [t1]
		ORDER BY
			[t1].[ParentID]
		OFFSET 2 ROWS
	) [t2]

