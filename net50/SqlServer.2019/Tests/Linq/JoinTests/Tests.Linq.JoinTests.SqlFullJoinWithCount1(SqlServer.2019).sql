BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	COUNT([left_1].[ParentID]),
	COUNT([p].[ParentID]),
	COUNT(*)
FROM
	[Parent] [left_1]
		FULL JOIN [Parent] [p] ON [p].[ParentID] = [left_1].[ParentID]

