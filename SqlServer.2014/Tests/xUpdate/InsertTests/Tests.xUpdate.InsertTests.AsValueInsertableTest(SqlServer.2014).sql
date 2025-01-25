BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TestInsertOrReplaceTable]', N'U') IS NOT NULL)
	DROP TABLE [TestInsertOrReplaceTable]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TestInsertOrReplaceTable]', N'U') IS NULL)
	CREATE TABLE [TestInsertOrReplaceTable]
	(
		[ID]         Int            NOT NULL,
		[FirstName]  NVarChar(4000)     NULL,
		[LastName]   NVarChar(4000)     NULL,
		[MiddleName] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TestInsertOrReplaceTable] PRIMARY KEY CLUSTERED ([ID])
	)

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

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TestInsertOrReplaceTable]', N'U') IS NOT NULL)
	DROP TABLE [TestInsertOrReplaceTable]

