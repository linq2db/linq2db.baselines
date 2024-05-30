﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [PR_1598_Update_Table]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[PR_1598_Update_Table]', N'U') IS NULL)
	CREATE TABLE [PR_1598_Update_Table]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL,
		[Age]  Int                NULL,

		CONSTRAINT [PK_PR_1598_Update_Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Manuel'
DECLARE @Age Int -- Int32
SET     @Age = 14

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
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jacob'
DECLARE @Age Int -- Int32
SET     @Age = 15
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Table]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[PR_1598_Update_Table].[Id] = @Id

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Age Int -- Int32
SET     @Age = 22
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Table]
SET
	[Age] = @Age
WHERE
	[PR_1598_Update_Table].[Id] = @Id

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [PR_1598_Update_Table]

