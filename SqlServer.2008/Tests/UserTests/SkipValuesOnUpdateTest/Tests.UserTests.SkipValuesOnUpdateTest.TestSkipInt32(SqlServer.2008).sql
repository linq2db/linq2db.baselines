﻿BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[PR_1598_Update_Table]', N'U') IS NOT NULL)
	DROP TABLE [PR_1598_Update_Table]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[PR_1598_Update_Table]', N'U') IS NULL)
	CREATE TABLE [PR_1598_Update_Table]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL,
		[Age]  Int                NULL,

		CONSTRAINT [PK_PR_1598_Update_Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Smith'
DECLARE @Age Int -- Int32
SET     @Age = 2

INSERT INTO [PR_1598_Update_Table]
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

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2008
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Franki'
DECLARE @Age Int -- Int32
SET     @Age = 15
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[t1]
SET
	[t1].[Name] = @Name,
	[t1].[Age] = @Age
FROM
	[PR_1598_Update_Table] [t1]
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2008
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jack'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[t1]
SET
	[t1].[Name] = @Name
FROM
	[PR_1598_Update_Table] [t1]
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[PR_1598_Update_Table]', N'U') IS NOT NULL)
	DROP TABLE [PR_1598_Update_Table]

