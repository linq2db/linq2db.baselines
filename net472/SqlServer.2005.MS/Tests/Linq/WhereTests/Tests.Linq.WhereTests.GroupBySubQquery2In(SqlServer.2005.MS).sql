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
			[t2].[c1]
		FROM
			(
				SELECT
					Max([t1].[ChildID]) as [c1]
				FROM
					[Child] [t1]
				GROUP BY
					[t1].[ParentID]
			) [t2]
	)

