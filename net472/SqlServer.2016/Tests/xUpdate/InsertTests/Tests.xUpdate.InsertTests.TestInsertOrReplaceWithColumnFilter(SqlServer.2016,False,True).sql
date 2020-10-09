BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [TestInsertOrReplaceTable]
(
	[ID]         Int            NOT NULL,
	[FirstName]  NVarChar(4000)     NULL,
	[LastName]   NVarChar(4000)     NULL,
	[MiddleName] NVarChar(4000)     NULL,

	CONSTRAINT [PK_TestInsertOrReplaceTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 0
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'whatever'

MERGE INTO [TestInsertOrReplaceTable] [t1]
USING (SELECT @ID AS [ID]) [s] ON
(
	[t1].[ID] = [s].[ID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[FirstName] = @FirstName,
		[t1].[LastName] = @LastName
WHEN NOT MATCHED THEN
	INSERT
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
	);

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @FirstName_1 NVarChar(4000) -- String
SET     @FirstName_1 = N'InsertOrReplaceColumnFilter'

SELECT TOP (@take) 
	[x].[ID], 
	[x].[FirstName], 
	[x].[LastName], 
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName_1

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 0
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'whatever'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'updated name'

MERGE INTO [TestInsertOrReplaceTable] [t1]
USING (SELECT @ID AS [ID]) [s] ON
(
	[t1].[ID] = [s].[ID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[t1].[FirstName] = @FirstName,
		[t1].[LastName] = @LastName,
		[t1].[MiddleName] = @MiddleName
WHEN NOT MATCHED THEN
	INSERT
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
	);

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @FirstName_1 NVarChar(4000) -- String
SET     @FirstName_1 = N'InsertOrReplaceColumnFilter'

SELECT TOP (@take) 
	[x].[ID], 
	[x].[FirstName], 
	[x].[LastName], 
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName_1

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [TestInsertOrReplaceTable]

