BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	Count(*)
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [g_1] ON [p].[ParentID] = [g_1].[ParentID],
	[Person] [t]

