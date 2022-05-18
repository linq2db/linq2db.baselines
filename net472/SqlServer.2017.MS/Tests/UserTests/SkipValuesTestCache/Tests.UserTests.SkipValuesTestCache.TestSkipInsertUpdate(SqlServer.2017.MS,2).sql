﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [PR_1598_Insert_Table_Cache]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL,
	[Age]  Int                NULL,

	CONSTRAINT [PK_PR_1598_Insert_Table_Cache] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Age Int -- Int32
SET     @Age = 2

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

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Age Int -- Int32
SET     @Age = 2
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[t1]
SET
	[t1].[Name] = @Name,
	[t1].[Age] = @Age
FROM
	[PR_1598_Insert_Table_Cache] [t1]
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [PR_1598_Insert_Table_Cache]

