BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[t1].[ParentID]
FROM
	( 
		SELECT 
			[ch].[ParentID] + 1 as [ParentID]
		FROM
			[Child] [ch]
	) [t1]
GROUP BY
	[t1].[ParentID]

