BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	CASE
		WHEN [t1].[ParentID] IS NOT NULL THEN [t1].[ChildID]
		ELSE 0
	END
FROM
	[Parent] [employee]
		LEFT JOIN [GrandChild] [names_1] ON [employee].[ParentID] = [names_1].[ParentID]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID],
				[a_Children].[ChildID]
			FROM
				[Child] [a_Children]
			WHERE
				[employee].[ParentID] = [a_Children].[ParentID]
		) [t1]

