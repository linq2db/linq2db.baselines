BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [PR_1598_SkipCustom_Table]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [PR_1598_SkipCustom_Table]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL,

	CONSTRAINT [PK_PR_1598_SkipCustom_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age  -- Int32
SET     @Age = 15

INSERT INTO [PR_1598_SkipCustom_Table]
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
	[PR_1598_SkipCustom_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'Max'

INSERT INTO [PR_1598_SkipCustom_Table]
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
-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_SkipCustom_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [PR_1598_SkipCustom_Table]

