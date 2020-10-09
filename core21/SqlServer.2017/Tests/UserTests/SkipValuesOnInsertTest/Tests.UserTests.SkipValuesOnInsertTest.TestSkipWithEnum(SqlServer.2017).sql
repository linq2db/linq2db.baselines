﻿BeforeExecute
-- SqlServer.2017

CREATE TABLE [PR_1598_Insert_Enum_Table]
(
	[Id]     Int            NOT NULL,
	[Name]   NVarChar(4000)     NULL,
	[Age]    Int                NULL,
	[Gender] NVarChar(6)        NULL,

	CONSTRAINT [PK_PR_1598_Insert_Enum_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Max'
DECLARE @Age Int -- Int32
SET     @Age = 20
DECLARE @Gender NVarChar(6) -- String
SET     @Gender = N'Male'

INSERT INTO [PR_1598_Insert_Enum_Table]
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
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[t].[Id], 
	[t].[Name], 
	[t].[Age], 
	[t].[Gender]
FROM
	[PR_1598_Insert_Enum_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jenny'
DECLARE @Age Int -- Int32
SET     @Age = 25

INSERT INTO [PR_1598_Insert_Enum_Table]
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
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[t].[Id], 
	[t].[Name], 
	[t].[Age], 
	[t].[Gender]
FROM
	[PR_1598_Insert_Enum_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- SqlServer.2017

DROP TABLE [PR_1598_Insert_Enum_Table]

