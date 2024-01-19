BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[n],
	Sum([t1].[ParentID])
FROM
	(
		SELECT
			[ch].[ChildID] + 1 as [n],
			[ch].[ParentID]
		FROM
			[Child] [ch]
	) [t1]
GROUP BY
	[t1].[n]

