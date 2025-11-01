-- SqlServer.2014

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2014

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2014
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE [t1]
FROM
	[TestData].[dbo].[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

