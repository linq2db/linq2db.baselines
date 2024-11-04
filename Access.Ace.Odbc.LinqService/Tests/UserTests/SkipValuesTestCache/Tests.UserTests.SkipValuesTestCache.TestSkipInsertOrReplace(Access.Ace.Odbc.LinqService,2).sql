﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [PR_1598_Insert_Table_Cache]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [PR_1598_Insert_Table_Cache]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_Insert_Table_Cache] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age  -- Int32
SET     @Age = 2
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Insert_Table_Cache] [t1]
SET
	[t1].[Name] = ?,
	[t1].[Age] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age  -- Int32
SET     @Age = 2

INSERT INTO [PR_1598_Insert_Table_Cache]
(
	[Id],
	[Name],
	[Age]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age  -- Int32
SET     @Age = 2
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Insert_Table_Cache] [t1]
SET
	[t1].[Name] = ?,
	[t1].[Age] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table_Cache] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [PR_1598_Insert_Table_Cache]

