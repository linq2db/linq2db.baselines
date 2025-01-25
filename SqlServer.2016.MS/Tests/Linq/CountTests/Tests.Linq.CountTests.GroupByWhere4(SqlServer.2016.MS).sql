BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[a_Parent].[ParentID]
FROM
	[GrandChild] [g_1]
		INNER JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
GROUP BY
	[a_Parent].[ParentID]
HAVING
	COUNT(*) > 2

