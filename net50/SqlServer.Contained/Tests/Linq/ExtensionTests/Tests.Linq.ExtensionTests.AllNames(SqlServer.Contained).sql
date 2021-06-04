BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[TestDataContained].[dbo].[Parent] [t1]

