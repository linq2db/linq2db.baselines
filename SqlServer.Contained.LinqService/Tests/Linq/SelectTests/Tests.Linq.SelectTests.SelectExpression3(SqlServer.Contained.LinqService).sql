BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	1
FROM
	[SelectExpressionTable] [t1]

