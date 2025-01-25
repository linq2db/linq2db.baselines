BeforeExecute
-- SqlServer.2012

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE [t1]
FROM
	[TestData]..[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

