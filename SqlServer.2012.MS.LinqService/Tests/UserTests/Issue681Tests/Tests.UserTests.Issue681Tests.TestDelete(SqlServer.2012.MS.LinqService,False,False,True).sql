﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE [t1]
FROM
	[dbo].[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

