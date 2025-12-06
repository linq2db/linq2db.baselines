-- SqlServer.2022

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 1

[TestData]..[Person_SelectByKey]

-- SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 1

SELECT * FROM Person WHERE PersonID = @id

