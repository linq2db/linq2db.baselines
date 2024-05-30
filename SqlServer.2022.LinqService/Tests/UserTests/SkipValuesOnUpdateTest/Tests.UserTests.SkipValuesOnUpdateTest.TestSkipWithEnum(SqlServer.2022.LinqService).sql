﻿BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [PR_1598_Update_Enum_Table]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[PR_1598_Update_Enum_Table]', N'U') IS NULL)
	CREATE TABLE [PR_1598_Update_Enum_Table]
	(
		[Id]     Int            NOT NULL,
		[Name]   NVarChar(4000)     NULL,
		[Age]    Int                NULL,
		[Gender] NVarChar(6)        NULL,

		CONSTRAINT [PK_PR_1598_Update_Enum_Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Max'
DECLARE @Age Int -- Int32
SET     @Age = 20
DECLARE @Gender NVarChar(6) -- String
SET     @Gender = N'Female'

INSERT INTO [PR_1598_Update_Enum_Table]
(
	[Id],
	[Name],
	[Age],
	[Gender]
)
VALUES
(
	@Id,
	@Name,
	@Age,
	@Gender
)

BeforeExecute
-- SqlServer.2022

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2022
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jack'
DECLARE @Age Int -- Int32
SET     @Age = 2
DECLARE @Gender NVarChar(6) -- String
SET     @Gender = N'Male'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Enum_Table]
SET
	[Name] = @Name,
	[Age] = @Age,
	[Gender] = @Gender
WHERE
	[PR_1598_Update_Enum_Table].[Id] = @Id

BeforeExecute
-- SqlServer.2022

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2022
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Francine'
DECLARE @Age Int -- Int32
SET     @Age = 20
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Enum_Table]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[PR_1598_Update_Enum_Table].[Id] = @Id

BeforeExecute
-- SqlServer.2022

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [PR_1598_Update_Enum_Table]

