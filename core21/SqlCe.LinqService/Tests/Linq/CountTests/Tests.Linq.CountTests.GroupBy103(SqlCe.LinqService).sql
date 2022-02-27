BeforeExecute
-- SqlCe

SELECT
	Count([t1].[ParentID])
FROM
	[Child] [t2]
		LEFT JOIN (
			SELECT
				[keyParam].[ParentID],
				[keyParam].[ChildID]
			FROM
				[Child] [keyParam]
			WHERE
				[keyParam].[ChildID] > 20
			GROUP BY
				[keyParam].[ParentID],
				[keyParam].[ChildID]
		) [t1] ON ([t2].[ParentID] = [t1].[ParentID] AND [t2].[ChildID] = [t1].[ChildID])
GROUP BY
	[t2].[ParentID],
	[t2].[ChildID]

