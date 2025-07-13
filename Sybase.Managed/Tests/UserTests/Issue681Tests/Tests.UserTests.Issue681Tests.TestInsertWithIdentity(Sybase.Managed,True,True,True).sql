BeforeExecute
-- Sybase.Managed Sybase

SELECT
	@@SERVERNAME

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	USER_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [TestDataCore].[dbo].[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT @@IDENTITY

