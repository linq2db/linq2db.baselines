BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[n],
	Sum([t1].[ParentID])
FROM
	(
		SELECT
			[selectParam].[ChildID] + 1 as [n],
			[selectParam].[ParentID]
		FROM
			[Child] [selectParam]
	) [t1]
GROUP BY
	[t1].[n]

