BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestInsertOrReplaceTable') IS NOT NULL)
	DROP TABLE [TestInsertOrReplaceTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestInsertOrReplaceTable') IS NULL)
	EXECUTE('
		CREATE TABLE [TestInsertOrReplaceTable]
		(
			[ID]         Int           NOT NULL,
			[FirstName]  NVarChar(255)     NULL,
			[LastName]   NVarChar(255)     NULL,
			[MiddleName] NVarChar(255)     NULL,

			CONSTRAINT [PK_TestInsertOrReplaceTable] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
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
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[ID] = 123 AND [x].[FirstName] = 'John'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestInsertOrReplaceTable') IS NOT NULL)
	DROP TABLE [TestInsertOrReplaceTable]

