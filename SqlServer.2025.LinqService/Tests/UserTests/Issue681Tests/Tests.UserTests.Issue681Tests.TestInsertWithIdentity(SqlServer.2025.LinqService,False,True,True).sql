BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [TestData].[dbo].[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT SCOPE_IDENTITY()

