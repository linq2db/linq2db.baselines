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

SELECT TOP 1
	USER_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM [TestDataCore].[dbo].[Issue681Table]
FROM
	[TestDataCore].[dbo].[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

