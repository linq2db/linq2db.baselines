BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[p].[ChildID]
FROM
	[Child] [p]

BeforeExecute
-- SqlCe

SELECT
	1
FROM
	[Parent] [p]

