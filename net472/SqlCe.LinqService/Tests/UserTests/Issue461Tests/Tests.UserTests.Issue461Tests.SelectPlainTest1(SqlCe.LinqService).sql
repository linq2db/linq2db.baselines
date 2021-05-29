BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[ParentID]
FROM
	[Child] [c_1]

BeforeExecute
-- SqlCe

SELECT
	1
FROM
	[Parent] [p]

