-- SqlCe
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

-- SqlCe
SELECT
	@@IDENTITY

