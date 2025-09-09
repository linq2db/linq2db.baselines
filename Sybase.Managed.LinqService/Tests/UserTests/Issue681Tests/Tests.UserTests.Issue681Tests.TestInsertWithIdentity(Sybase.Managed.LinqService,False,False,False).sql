BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT @@IDENTITY

