-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.CS.MS SqlServer.2025
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [TestDataMSCS]..[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT SCOPE_IDENTITY()

