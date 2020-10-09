BeforeExecute
-- SqlCe

SELECT 
	Count(*)
FROM
	[Parent] [p]
		CROSS JOIN [Person] [t]
		INNER JOIN [GrandChild] [g_1] ON [p].[ParentID] = [g_1].[ParentID]

