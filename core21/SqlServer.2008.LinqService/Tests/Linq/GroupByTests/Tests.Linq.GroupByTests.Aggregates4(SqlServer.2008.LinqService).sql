BeforeExecute
-- SqlServer.2008

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			[Child] [keyParam]
		WHERE
			[t1].[ParentID] = [keyParam].[ParentID] AND [keyParam].[ChildID] > 30
	), 
	(
		SELECT 
			Sum([keyParam_1].[ChildID])
		FROM
			[Child] [keyParam_1]
		WHERE
			[t1].[ParentID] = [keyParam_1].[ParentID] AND [keyParam_1].[ChildID] > 30
	)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

