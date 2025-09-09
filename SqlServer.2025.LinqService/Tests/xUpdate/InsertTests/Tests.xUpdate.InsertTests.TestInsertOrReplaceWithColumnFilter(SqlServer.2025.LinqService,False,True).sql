BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
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
		[FirstName] = @FirstName,
		[LastName] = @LastName
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
-- SqlServer.2025 SqlServer.2022 (asynchronously)
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
-- SqlServer.2025 SqlServer.2022 (asynchronously)
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
		[FirstName] = @FirstName,
		[LastName] = @LastName,
		[MiddleName] = @MiddleName
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
-- SqlServer.2025 SqlServer.2022 (asynchronously)
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

