-- SqlServer.2012.MS SqlServer.2012
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

