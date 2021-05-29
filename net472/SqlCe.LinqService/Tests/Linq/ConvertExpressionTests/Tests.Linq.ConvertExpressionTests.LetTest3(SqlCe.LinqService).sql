BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[p].[ParentID]
FROM
	[Child] [p]

BeforeExecute
-- SqlCe

SELECT
	1
FROM
	[Parent] [p]

