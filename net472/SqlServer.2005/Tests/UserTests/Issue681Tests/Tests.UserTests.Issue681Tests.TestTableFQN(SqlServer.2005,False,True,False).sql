BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2005

SELECT 
	[t1].[ID]
FROM
	[TestData2005]..[LinqDataTypes] [t1]

