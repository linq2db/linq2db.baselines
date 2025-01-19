BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'

MERGE INTO [PR_1598_Insert_Table_Cache] [t1]
USING (SELECT @Id AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Name] = @Name
WHEN NOT MATCHED THEN
	INSERT
	(
		[Id],
		[Name]
	)
	VALUES
	(
		@Id,
		@Name
	);

BeforeExecute
-- SqlServer.2008

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'

MERGE INTO [PR_1598_Insert_Table_Cache] [t1]
USING (SELECT @Id AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Name] = @Name
WHEN NOT MATCHED THEN
	INSERT
	(
		[Id],
		[Name]
	)
	VALUES
	(
		@Id,
		@Name
	);

BeforeExecute
-- SqlServer.2008

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

