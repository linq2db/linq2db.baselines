BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[ID]
FROM
	[dbo].[LinqDataTypes] [t1]

