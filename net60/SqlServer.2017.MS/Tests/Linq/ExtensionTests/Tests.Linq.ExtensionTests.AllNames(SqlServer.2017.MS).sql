﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[TestDataMS].[dbo].[Parent] [t1]

