BeforeExecute
-- SqlCe

SELECT DISTINCT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[ParentID] as [ParentID_1],
	[t1].[ChildID] as [ChildID_1]
FROM
	[Child] [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [p]
		WHERE
			[t1].[ParentID] = [p].[ParentID] AND [t1].[ChildID] = [p].[ChildID] AND
			[p].[ParentID] = 3
	)

