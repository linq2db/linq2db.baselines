BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[PR_1598_Insert_Table_Cache]', N'U') IS NOT NULL)
	DROP TABLE [PR_1598_Insert_Table_Cache]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[PR_1598_Insert_Table_Cache]', N'U') IS NULL)
	CREATE TABLE [PR_1598_Insert_Table_Cache]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL,
		[Age]  Int                NULL,

		CONSTRAINT [PK_PR_1598_Insert_Table_Cache] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Insert_Table_Cache]
SET
	[Name] = @Name
FROM
	[PR_1598_Insert_Table_Cache] [t1]
WHERE
	[t1].[Id] = @Id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [PR_1598_Insert_Table_Cache]
	(
		[Id],
		[Name]
	)
	VALUES
	(
		@Id,
		@Name
	)
END

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Insert_Table_Cache]
SET
	[Name] = @Name
FROM
	[PR_1598_Insert_Table_Cache] [t1]
WHERE
	[t1].[Id] = @Id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [PR_1598_Insert_Table_Cache]
	(
		[Id],
		[Name]
	)
	VALUES
	(
		@Id,
		@Name
	)
END

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[PR_1598_Insert_Table_Cache]', N'U') IS NOT NULL)
	DROP TABLE [PR_1598_Insert_Table_Cache]

