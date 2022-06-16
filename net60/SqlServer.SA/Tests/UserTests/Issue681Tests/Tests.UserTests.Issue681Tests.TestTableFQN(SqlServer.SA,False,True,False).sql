BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestDataSA]..[LinqDataTypes] [t1]

