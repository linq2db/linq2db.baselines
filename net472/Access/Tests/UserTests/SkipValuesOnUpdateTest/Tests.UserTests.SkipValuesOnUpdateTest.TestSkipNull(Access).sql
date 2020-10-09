﻿BeforeExecute
-- Access AccessOleDb

CREATE TABLE [PR_1598_Update_Null_Table]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_Update_Null_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Integer -- Int32
SET     @Age = NULL

INSERT INTO [PR_1598_Update_Null_Table]
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
-- Access AccessOleDb

SELECT TOP 1 
	[t].[Id], 
	[t].[Name], 
	[t].[Age]
FROM
	[PR_1598_Update_Null_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access AccessOleDb
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Null_Table] [t1]
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
	[t].[Age]
FROM
	[PR_1598_Update_Null_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access AccessOleDb
DECLARE @Name VarWChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Null_Table] [t1]
SET
	[t1].[Name] = @Name
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1 
	[t].[Id], 
	[t].[Name], 
	[t].[Age]
FROM
	[PR_1598_Update_Null_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [PR_1598_Update_Null_Table]

