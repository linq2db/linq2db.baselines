﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE [t1]
FROM
	[TestDataMS]..[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

