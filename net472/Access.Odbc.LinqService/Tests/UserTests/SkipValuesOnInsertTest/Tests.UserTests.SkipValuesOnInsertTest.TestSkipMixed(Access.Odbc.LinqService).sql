﻿BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [PR_1598_Mixed_Table]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_Mixed_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age Int -- Int32
SET     @Age = 20

INSERT INTO [PR_1598_Mixed_Table]
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
-- Access.Odbc AccessODBC

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Age Int -- Int32
SET     @Age = 20
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Mixed_Table] [t1]
SET
	[t1].[Age] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Age Int -- Int32
SET     @Age = 25

INSERT INTO [PR_1598_Mixed_Table]
(
	[Id],
	[Age]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age Int -- Int32
SET     @Age = 25
DECLARE @Id Int -- Int32
SET     @Id = 2

UPDATE
	[PR_1598_Mixed_Table] [t1]
SET
	[t1].[Name] = ?,
	[t1].[Age] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [PR_1598_Mixed_Table]

