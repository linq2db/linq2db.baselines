BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	[x].[ChildID] IN (
		SELECT
			Max([t1].[ChildID])
		FROM
			[Child] [t1]
		GROUP BY
			[t1].[ParentID]
	)

