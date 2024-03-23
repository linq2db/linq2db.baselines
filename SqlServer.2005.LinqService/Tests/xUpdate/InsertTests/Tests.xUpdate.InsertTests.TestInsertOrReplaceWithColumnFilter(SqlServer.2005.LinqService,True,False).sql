BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TestInsertOrReplaceTable]', N'U') IS NOT NULL)
	DROP TABLE [TestInsertOrReplaceTable]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'whatever'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'som middle name'
DECLARE @ID Int -- Int32
SET     @ID = 0

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
		@FirstName,
		@LastName,
		@MiddleName
	)
END

BeforeExecute
-- SqlServer.2005
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertOrReplaceColumnFilter'

SELECT TOP (1)
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName

BeforeExecute
-- SqlServer.2005
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'whatever'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'updated name'
DECLARE @ID Int -- Int32
SET     @ID = 0

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
		@FirstName,
		@LastName,
		@MiddleName
	)
END

BeforeExecute
-- SqlServer.2005
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertOrReplaceColumnFilter'

SELECT TOP (1)
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TestInsertOrReplaceTable]', N'U') IS NOT NULL)
	DROP TABLE [TestInsertOrReplaceTable]

