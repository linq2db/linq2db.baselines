﻿BeforeExecute
-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[ID]
FROM
	[TestData2014]..[LinqDataTypes] [t1]

