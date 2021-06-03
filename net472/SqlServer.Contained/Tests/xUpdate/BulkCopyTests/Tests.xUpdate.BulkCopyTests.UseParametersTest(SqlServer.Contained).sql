BeforeExecute
INSERT BULK [Parent](ParentID, Value1)

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 111001
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 111149

SELECT
	Count(*)
FROM
	[Parent] [r]
WHERE
	[r].[ParentID] >= @ParentID AND [r].[ParentID] <= @ParentID_1

