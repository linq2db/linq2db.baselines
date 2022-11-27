BeforeExecute
-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 1

[TestData]..[Person_SelectByKey]

BeforeExecute
-- SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 1

SELECT * FROM Person WHERE PersonID = @id

