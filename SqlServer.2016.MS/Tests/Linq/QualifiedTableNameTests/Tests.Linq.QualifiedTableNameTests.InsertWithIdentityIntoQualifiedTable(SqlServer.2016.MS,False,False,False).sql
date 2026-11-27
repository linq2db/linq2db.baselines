-- SqlServer.2016.MS SqlServer.2016
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [QualifiedIdTable]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT SCOPE_IDENTITY()

