BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[a_Parent].[Value1]
FROM
	[Parent] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[Value1]
WHERE
	[x].[Value1] IS NULL

