BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	Sum(IIF([a_Parent].[Value1] IS NULL, 0, [a_Parent].[Value1]))
FROM
	[Child] [t1]
		LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
GROUP BY
	[t1].[ParentID]

