BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 5

SELECT TOP (@take)
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

