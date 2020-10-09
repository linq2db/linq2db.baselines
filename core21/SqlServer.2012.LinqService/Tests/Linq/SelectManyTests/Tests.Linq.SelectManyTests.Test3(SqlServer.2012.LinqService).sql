BeforeExecute
-- SqlServer.2012

SELECT 
	Count(*)
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [g_1] ON [p].[ParentID] = [g_1].[ParentID],
	[Person] [t]

