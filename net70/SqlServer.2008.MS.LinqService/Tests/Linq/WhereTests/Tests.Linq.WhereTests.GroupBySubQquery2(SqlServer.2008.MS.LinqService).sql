BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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

