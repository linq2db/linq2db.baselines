-- Sybase.Managed Sybase

SELECT
	@@SERVERNAME

-- Sybase.Managed Sybase

SELECT TOP 1
	USER_NAME()
FROM
	[LinqDataTypes] [t1]

-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[dbo].[Issue681Table]
SET
	[Value] = @Value
WHERE
	[dbo].[Issue681Table].[ID] = @ID

