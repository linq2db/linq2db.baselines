﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE [t1]
FROM
	[TestDataMS].[dbo].[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

