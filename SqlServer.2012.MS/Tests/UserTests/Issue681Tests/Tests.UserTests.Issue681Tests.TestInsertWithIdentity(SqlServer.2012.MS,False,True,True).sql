BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [TestDataMS].[dbo].[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT SCOPE_IDENTITY()

