BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[ChildID]
FROM
	(
		SELECT
			[selectParam].[ParentID] + 1 as [c1],
			[selectParam].[ChildID]
		FROM
			[GrandChild] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[ChildID]

