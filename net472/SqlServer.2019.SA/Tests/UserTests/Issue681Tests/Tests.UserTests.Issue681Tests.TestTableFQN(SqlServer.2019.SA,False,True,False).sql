BeforeExecute
-- SqlServer.2019.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestData2019SA]..[LinqDataTypes] [t1]

