﻿BeforeExecute
-- Access AccessOleDb

CREATE TABLE [PR_1598_Update_Enum_Table]
(
	[Id]     Int           NOT NULL,
	[Name]   NVarChar(255)     NULL,
	[Age]    Int               NULL,
	[Gender] NVarChar          NULL,

	CONSTRAINT [PK_PR_1598_Update_Enum_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Gender VarWChar(6) -- String
SET     @Gender = 'Female'

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
-- Access AccessOleDb

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access AccessOleDb
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Gender VarWChar(4) -- String
SET     @Gender = 'Male'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Enum_Table] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Age] = @Age,
	[t1].[Gender] = @Gender
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access AccessOleDb
DECLARE @Name VarWChar(8) -- String
SET     @Name = 'Francine'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Enum_Table] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Age] = @Age
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Update_Enum_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [PR_1598_Update_Enum_Table]

