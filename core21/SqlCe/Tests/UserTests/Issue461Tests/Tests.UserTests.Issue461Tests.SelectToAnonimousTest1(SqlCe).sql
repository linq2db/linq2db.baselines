BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[l].[ParentID]
FROM
	[Child] [l]

BeforeExecute
-- SqlCe

SELECT
	1
FROM
	[Parent] [sep]

