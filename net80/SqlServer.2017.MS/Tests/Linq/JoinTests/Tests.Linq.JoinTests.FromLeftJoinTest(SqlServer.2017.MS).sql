BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		OUTER APPLY (
			SELECT
				*
			FROM
				[GrandChild] [t]
			WHERE
				[c_1].[ChildID] IN (
					SELECT
						[r].[PersonID]
					FROM
						[Person] [r]
				)
		) [t1]

