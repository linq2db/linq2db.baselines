BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	1 as [cond]
FROM
	[SelectExpressionTable] [t1]

