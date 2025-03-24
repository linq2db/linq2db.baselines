﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
--  SqlServer.2014.MS SqlServer.2014
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[u]
SET
	[u].[Value] = @Value
FROM
	[dbo].[Issue681Table] [u]
WHERE
	[u].[ID] = @ID

