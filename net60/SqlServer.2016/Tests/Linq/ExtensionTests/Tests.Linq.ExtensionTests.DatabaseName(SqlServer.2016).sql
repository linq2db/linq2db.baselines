﻿BeforeExecute
-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[TestData]..[Parent] [t1]

