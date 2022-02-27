BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[TestData2019]..[LinqDataTypes] [t1]

