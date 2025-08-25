BeforeExecute
-- SqlCe (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	1 as [c1]
FROM
	[SelectExpressionTable] [t1]

