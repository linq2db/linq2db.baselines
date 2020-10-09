BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [TestInsertOrReplaceTable]
(
	[ID]         Int           NOT NULL,
	[FirstName]  NVarChar(255)     NULL,
	[LastName]   NVarChar(255)     NULL,
	[MiddleName] NVarChar(255)     NULL,

	CONSTRAINT [PK_TestInsertOrReplaceTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName_1 UniVarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @LastName_1 UniVarChar(8) -- String
SET     @LastName_1 = 'whatever'
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName UniVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName UniVarChar(8) -- String
SET     @LastName = 'whatever'

BEGIN TRAN

UPDATE
	[TestInsertOrReplaceTable]
SET
	[t1].[FirstName] = @FirstName_1,
	[t1].[LastName] = @LastName_1
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
		[LastName]
	)
	VALUES
	(
		@ID,
		@FirstName,
		@LastName
	)
END

COMMIT

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName_1 UniVarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'

SELECT TOP 1 
	[x].[ID], 
	[x].[FirstName], 
	[x].[LastName], 
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName_1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName_1 UniVarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @LastName_1 UniVarChar(8) -- String
SET     @LastName_1 = 'whatever'
DECLARE @MiddleName_1 UniVarChar(12) -- String
SET     @MiddleName_1 = 'updated name'
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName UniVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName UniVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName UniVarChar(12) -- String
SET     @MiddleName = 'updated name'

BEGIN TRAN

UPDATE
	[TestInsertOrReplaceTable]
SET
	[t1].[FirstName] = @FirstName_1,
	[t1].[LastName] = @LastName_1,
	[t1].[MiddleName] = @MiddleName_1
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
		@FirstName,
		@LastName,
		@MiddleName
	)
END

COMMIT

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName_1 UniVarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'

SELECT TOP 1 
	[x].[ID], 
	[x].[FirstName], 
	[x].[LastName], 
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName_1

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [TestInsertOrReplaceTable]

