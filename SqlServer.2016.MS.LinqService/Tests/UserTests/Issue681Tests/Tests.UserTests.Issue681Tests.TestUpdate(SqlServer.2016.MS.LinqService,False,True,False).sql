BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[u]
SET
	[u].[Value] = @Value
FROM
	[TestDataMS]..[Issue681Table] [u]
WHERE
	[u].[ID] = @ID

