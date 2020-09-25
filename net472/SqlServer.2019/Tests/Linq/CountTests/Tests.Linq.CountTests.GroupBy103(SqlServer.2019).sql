BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [keyParam]
		WHERE
			([t1].[ParentID] = [keyParam].[ParentID] AND [t1].[ChildID] = [keyParam].[ChildID]) AND
			[keyParam].[ChildID] > 20
	)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

