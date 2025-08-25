BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT TOP 1
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[TestDataCore]..[Issue681Table]
SET
	[Value] = @Value
WHERE
	[TestDataCore]..[Issue681Table].[ID] = @ID

