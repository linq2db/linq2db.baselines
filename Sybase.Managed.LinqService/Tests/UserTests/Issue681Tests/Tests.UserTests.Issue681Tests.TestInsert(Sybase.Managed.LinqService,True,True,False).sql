BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	@@SERVERNAME

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT TOP 1
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [TestDataCore]..[Issue681Table]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

