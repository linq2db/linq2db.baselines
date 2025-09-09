BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE [t1]
FROM
	[TestDataMS]..[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

