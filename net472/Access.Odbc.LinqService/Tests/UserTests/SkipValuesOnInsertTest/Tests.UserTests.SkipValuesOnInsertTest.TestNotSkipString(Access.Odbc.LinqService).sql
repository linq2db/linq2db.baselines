﻿BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [PR_1598_Insert_Table]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_Insert_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Paul'
DECLARE @Age Int -- Int32
SET     @Age = 14

INSERT INTO [PR_1598_Insert_Table]
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
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Mary'
DECLARE @Age Int -- Int32
SET     @Age = 15

INSERT INTO [PR_1598_Insert_Table]
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
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [PR_1598_Insert_Table]

