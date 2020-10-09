BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID] + 1
	)

