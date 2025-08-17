BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[u]
SET
	[u].[Value] = @Value
FROM
	[TestDataMSSA]..[Issue681Table] [u]
WHERE
	[u].[ID] = @ID

