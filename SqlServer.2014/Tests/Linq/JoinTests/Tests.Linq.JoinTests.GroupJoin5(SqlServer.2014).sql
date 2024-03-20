BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [t2]
		OUTER APPLY (
			SELECT TOP (1)
				[ch].[ParentID],
				[ch].[ChildID]
			FROM
				[Child] [ch]
			WHERE
				[t2].[ParentID] = [ch].[ParentID]
			ORDER BY
				[ch].[ChildID]
		) [t1]
WHERE
	[t2].[ParentID] >= 1
ORDER BY
	[t2].[ParentID]

