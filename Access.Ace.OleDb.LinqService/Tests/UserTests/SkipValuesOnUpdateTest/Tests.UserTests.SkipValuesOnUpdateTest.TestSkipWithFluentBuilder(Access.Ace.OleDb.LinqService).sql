﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [PR_1598_Update_Fluent_Table]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [PR_1598_Update_Fluent_Table]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_Update_Fluent_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar -- String
SET     @Name = NULL
DECLARE @Age Integer -- Int32
SET     @Age = 2

INSERT INTO [PR_1598_Update_Fluent_Table]
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
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Fluent_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Name VarWChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Integer -- Int32
SET     @Age = 18
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Fluent_Table] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Age] = @Age
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Fluent_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Fluent_Table] [t1]
SET
	[t1].[Name] = @Name
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Update_Fluent_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [PR_1598_Update_Fluent_Table]

