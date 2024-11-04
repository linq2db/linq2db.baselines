﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [PR_1598_Insert_Table_Cache]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [PR_1598_Insert_Table_Cache]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_Insert_Table_Cache] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'John'

INSERT INTO [PR_1598_Insert_Table_Cache]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Insert_Table_Cache] [t1]
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
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [PR_1598_Insert_Table_Cache]

