BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 123
DECLARE @FirstName UniVarChar(4) -- String
SET     @FirstName = 'John'

INSERT INTO [TestInsertOrReplaceTable]
(
	[ID],
	[FirstName]
)
VALUES
(
	@ID,
	@FirstName
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	COUNT(*)
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[ID] = 123 AND [x].[FirstName] = 'John'

