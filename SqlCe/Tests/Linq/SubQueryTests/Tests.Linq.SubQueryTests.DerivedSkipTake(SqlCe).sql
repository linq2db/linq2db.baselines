BeforeExecute
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
		OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
	) [t2]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

