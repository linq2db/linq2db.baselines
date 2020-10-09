BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 3

SELECT 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] IN (
		SELECT TOP (@take) 
			[p].[ParentID]
		FROM
			[Parent] [p1]
		WHERE
			([p1].[Value1] IS NULL AND [p].[Value1] IS NULL OR [p1].[Value1] = [p].[Value1])
	)

