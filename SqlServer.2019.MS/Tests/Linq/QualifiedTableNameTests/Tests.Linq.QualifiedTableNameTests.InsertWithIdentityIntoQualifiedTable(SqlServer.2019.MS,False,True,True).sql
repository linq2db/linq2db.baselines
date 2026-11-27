-- SqlServer.2019.MS SqlServer.2019
SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2019.MS SqlServer.2019
SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2019.MS SqlServer.2019
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [TestDataMS].[dbo].[QualifiedIdTable]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT SCOPE_IDENTITY()

