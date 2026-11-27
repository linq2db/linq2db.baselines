-- Sybase.Managed Sybase
SELECT TOP 1
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

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
	[TestDataCore].[dbo].[QualifiedNameTable]
SET
	[Value] = @Value
WHERE
	[TestDataCore].[dbo].[QualifiedNameTable].[ID] = @ID

