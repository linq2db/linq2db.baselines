BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t1].[ID]
FROM
	[dbo].[LinqDataTypes] [t1]

