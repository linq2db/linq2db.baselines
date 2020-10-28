BeforeExecute
-- SqlServer.2017

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
				(EXISTS(
					SELECT
						*
					FROM
						[Person] [r]
					WHERE
						[r].[PersonID] = [c_1].[ChildID]
				))
		) [t1]

