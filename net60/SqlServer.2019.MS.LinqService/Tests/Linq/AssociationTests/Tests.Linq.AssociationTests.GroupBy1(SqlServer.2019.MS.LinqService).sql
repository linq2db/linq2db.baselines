BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t2].[c1],
	[t2].[Value1]
FROM
	(
		SELECT
			[a_Parent].[ParentID] as [c1],
			[a_Parent].[Value1]
		FROM
			[Child] [t1]
				LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
	) [t2]
GROUP BY
	[t2].[c1],
	[t2].[Value1]

