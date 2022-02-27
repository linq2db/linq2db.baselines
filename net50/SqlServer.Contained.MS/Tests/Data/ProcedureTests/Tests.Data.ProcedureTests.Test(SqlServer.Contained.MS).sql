BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

[TestDataMSContained]..[Person_SelectByKey]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

SELECT * FROM Person WHERE PersonID = @id

