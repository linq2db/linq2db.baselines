BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[u]
SET
	[u].[Value] = @Value
FROM
	[TestData]..[Issue681Table] [u]
WHERE
	[u].[ID] = @ID

