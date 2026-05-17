-- SqlServer.2012

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [dbo].[Issue681Table]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

