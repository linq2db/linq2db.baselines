BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [PR_1598_Insert_Table]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [PR_1598_Insert_Table]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_Insert_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Smith'

INSERT INTO [PR_1598_Insert_Table]
(
	[Id],
	[Name]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO [PR_1598_Insert_Table]
(
	[Id],
	[Name]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [PR_1598_Insert_Table]

