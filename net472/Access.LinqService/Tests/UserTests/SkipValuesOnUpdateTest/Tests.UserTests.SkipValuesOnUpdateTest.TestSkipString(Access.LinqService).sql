﻿BeforeExecute
-- Access AccessOleDb

CREATE TABLE [PR_1598_Update_Table]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_Update_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(6) -- String
SET     @Name = 'Manuel'
DECLARE @Age Integer -- Int32
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
-- Access AccessOleDb
DECLARE @Name VarWChar(5) -- String
SET     @Name = 'Jacob'
DECLARE @Age Integer -- Int32
SET     @Age = 15
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Table] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Age] = @Age
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- Access AccessOleDb
DECLARE @Age Integer -- Int32
SET     @Age = 22
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Update_Table] [t1]
SET
	[t1].[Age] = @Age
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- Access AccessOleDb

DROP TABLE [PR_1598_Update_Table]

