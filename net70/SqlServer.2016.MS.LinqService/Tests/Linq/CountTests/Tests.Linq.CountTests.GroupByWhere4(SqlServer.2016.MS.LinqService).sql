BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t2].[c1]
FROM
	(
		SELECT
			[a_Parent].[ParentID] as [c1]
		FROM
			[GrandChild] [t1]
				INNER JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
	) [t2]
GROUP BY
	[t2].[c1]
HAVING
	Count(*) > 2

