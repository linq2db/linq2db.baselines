BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE [t1]
FROM
	[dbo].[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

