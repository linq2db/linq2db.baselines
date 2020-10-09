BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Parent] [p]

