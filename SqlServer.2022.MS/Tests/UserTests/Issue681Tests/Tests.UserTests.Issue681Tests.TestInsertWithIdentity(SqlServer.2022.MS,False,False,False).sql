-- SqlServer.2022.MS SqlServer.2022
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT SCOPE_IDENTITY()

