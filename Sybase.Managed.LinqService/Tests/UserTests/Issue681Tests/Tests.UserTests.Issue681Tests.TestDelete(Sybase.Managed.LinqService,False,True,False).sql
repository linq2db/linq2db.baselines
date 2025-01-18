BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM [TestDataCore]..[Issue681Table]
FROM
	[TestDataCore]..[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

