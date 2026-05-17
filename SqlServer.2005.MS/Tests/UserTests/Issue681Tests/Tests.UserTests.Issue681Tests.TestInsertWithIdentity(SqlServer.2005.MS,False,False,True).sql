-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [dbo].[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT SCOPE_IDENTITY()

