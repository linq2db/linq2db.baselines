BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Age Int -- Int32
SET     @Age = 2

MERGE INTO [PR_1598_Insert_Table_Cache] [t1]
USING (SELECT @Id AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Name] = @Name,
		[Age] = @Age
WHEN NOT MATCHED THEN
	INSERT
	(
		[Id],
		[Name],
		[Age]
	)
	VALUES
	(
		@Id,
		@Name,
		@Age
	);

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Age Int -- Int32
SET     @Age = 2

MERGE INTO [PR_1598_Insert_Table_Cache] [t1]
USING (SELECT @Id AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Name] = @Name,
		[Age] = @Age
WHEN NOT MATCHED THEN
	INSERT
	(
		[Id],
		[Name],
		[Age]
	)
	VALUES
	(
		@Id,
		@Name,
		@Age
	);

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

