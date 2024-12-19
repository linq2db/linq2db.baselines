BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [t1].[ParentID] IS NOT NULL THEN [t1].[ChildID]
		ELSE 0
	END as [c1]
FROM
	[Parent] [employee]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID],
				[a_Children].[ChildID]
			FROM
				[Child] [a_Children]
			WHERE
				[employee].[ParentID] = [a_Children].[ParentID]
		) [t1]

