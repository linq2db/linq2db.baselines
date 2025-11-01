-- SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

[TestData]..[Person_SelectByKey]

-- SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

SELECT * FROM Person WHERE PersonID = @id

