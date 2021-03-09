﻿BeforeExecute
-- SqlServer.2005

CREATE TABLE [PR_1598_Insert_Table_Cache]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Age]  Int                NULL,

	CONSTRAINT [PK_PR_1598_Insert_Table_Cache] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Age Int -- Int32
SET     @Age = 2
DECLARE @Id Int -- Int32
SET     @Id = 1

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Name] = @Name,
	[t1].[Age] = @Age
FROM
	[PR_1598_Insert_Table_Cache] [t1]
WHERE
	[t1].[Id] = @Id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [PR_1598_Insert_Table_Cache]
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
	)
END

COMMIT

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Age Int -- Int32
SET     @Age = 2
DECLARE @Id Int -- Int32
SET     @Id = 1

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[Name] = @Name,
	[t1].[Age] = @Age
FROM
	[PR_1598_Insert_Table_Cache] [t1]
WHERE
	[t1].[Id] = @Id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [PR_1598_Insert_Table_Cache]
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
	)
END

COMMIT

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[PR_1598_Insert_Table_Cache]', N'U') IS NOT NULL)
	DROP TABLE [PR_1598_Insert_Table_Cache]

