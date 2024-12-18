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
DECLARE @FirstName UniVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName UniVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName UniVarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName_1 UniVarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @LastName_1 UniVarChar(8) -- String
SET     @LastName_1 = 'whatever'
DECLARE @MiddleName_1 UniVarChar(15) -- String
SET     @MiddleName_1 = 'som middle name'

UPDATE
	[TestInsertOrReplaceTable]
SET
	[FirstName] = @FirstName,
	[LastName] = @LastName,
	[MiddleName] = @MiddleName
FROM
	[TestInsertOrReplaceTable] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [TestInsertOrReplaceTable]
	(
		[ID],
		[FirstName],
		[LastName],
		[MiddleName]
	)
	VALUES
	(
		@ID,
		@FirstName_1,
		@LastName_1,
		@MiddleName_1
	)
END

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT TOP 1
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName AND [x].[FirstName] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName UniVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName UniVarChar(12) -- String
SET     @MiddleName = 'updated name'
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName_1 UniVarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @LastName_1 UniVarChar(8) -- String
SET     @LastName_1 = 'whatever'
DECLARE @MiddleName_1 UniVarChar(12) -- String
SET     @MiddleName_1 = 'updated name'

UPDATE
	[TestInsertOrReplaceTable]
SET
	[FirstName] = @FirstName,
	[LastName] = @LastName,
	[MiddleName] = @MiddleName
FROM
	[TestInsertOrReplaceTable] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [TestInsertOrReplaceTable]
	(
		[ID],
		[FirstName],
		[LastName],
		[MiddleName]
	)
	VALUES
	(
		@ID,
		@FirstName_1,
		@LastName_1,
		@MiddleName_1
	)
END

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT TOP 1
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName AND [x].[FirstName] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestInsertOrReplaceTable') IS NOT NULL)
	DROP TABLE [TestInsertOrReplaceTable]

