BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[ParentID],
				[t1].[ChildID]
			FROM
				(
					SELECT DISTINCT
						[a_Children].[ChildID],
						[a_Children].[ParentID]
					FROM
						[Child] [a_Children]
					WHERE
						[a_Children].[ParentID] > 0 AND [p].[ParentID] = [a_Children].[ParentID]
				) [t1]
			ORDER BY
				[t1].[ChildID]
		) [t2]

