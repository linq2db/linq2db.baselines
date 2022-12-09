BeforeExecute
-- SqlServer.2017

SELECT
	[t2].[Value1]
FROM
	(
		SELECT
			[a_Parent].[ParentID] as [c1],
			[t1].[ParentID],
			[a_Parent].[Value1]
		FROM
			[GrandChild] [t1]
				INNER JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
	) [t2]
GROUP BY
	[t2].[c1],
	[t2].[Value1]
HAVING
	Max([t2].[ParentID]) > 2

