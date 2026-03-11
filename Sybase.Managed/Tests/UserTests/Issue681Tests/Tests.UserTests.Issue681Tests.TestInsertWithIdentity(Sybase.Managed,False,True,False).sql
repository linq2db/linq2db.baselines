-- Sybase.Managed Sybase

SELECT TOP 1
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [TestDataCore]..[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT @@IDENTITY

