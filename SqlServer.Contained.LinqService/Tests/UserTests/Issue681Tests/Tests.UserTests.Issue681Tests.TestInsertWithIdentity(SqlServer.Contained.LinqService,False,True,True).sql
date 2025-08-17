BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [TestDataContained].[dbo].[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT SCOPE_IDENTITY()

