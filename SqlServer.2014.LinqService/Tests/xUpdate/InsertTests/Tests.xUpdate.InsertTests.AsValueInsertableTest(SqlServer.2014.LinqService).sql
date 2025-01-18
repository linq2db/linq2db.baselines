BeforeExecute
-- SqlServer.2014
DECLARE @ID Int -- Int32
SET     @ID = 123
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John'

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
-- SqlServer.2014

SELECT
	COUNT(*)
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[ID] = 123 AND [x].[FirstName] = N'John'

