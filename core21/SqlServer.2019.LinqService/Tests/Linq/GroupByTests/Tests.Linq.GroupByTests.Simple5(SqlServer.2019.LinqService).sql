BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[t2].[ParentID]
FROM
	( 
		SELECT 
			[t1].[ParentID]
		FROM
			[GrandChild] [t1]
		GROUP BY
			[t1].[ParentID],
			[t1].[ChildID]
	) [t2]
GROUP BY
	[t2].[ParentID]

