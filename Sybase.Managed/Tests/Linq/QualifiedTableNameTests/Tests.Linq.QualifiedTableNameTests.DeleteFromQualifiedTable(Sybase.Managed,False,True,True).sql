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
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM [TestDataCore].[dbo].[QualifiedNameTable]
FROM
	[TestDataCore].[dbo].[QualifiedNameTable] [t1]
WHERE
	[t1].[ID] = @ID

