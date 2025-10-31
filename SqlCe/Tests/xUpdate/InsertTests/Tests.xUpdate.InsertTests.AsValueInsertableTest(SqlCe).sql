BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 123
DECLARE @FirstName NVarChar(4) -- String
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
-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[ID] = 123 AND [x].[FirstName] = 'John'

