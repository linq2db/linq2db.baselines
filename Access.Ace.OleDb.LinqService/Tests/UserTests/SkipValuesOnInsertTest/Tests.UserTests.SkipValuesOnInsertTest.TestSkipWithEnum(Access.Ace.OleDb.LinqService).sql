BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [PR_1598_Insert_Enum_Table]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [PR_1598_Insert_Enum_Table]
(
	[Id]     Int           NOT NULL,
	[Name]   NVarChar(255)     NULL,
	[Age]    Int               NULL,
	[Gender] NVarChar(6)       NULL,

	CONSTRAINT [PK_PR_1598_Insert_Enum_Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Gender VarWChar(4) -- String
SET     @Gender = 'Male'

INSERT INTO [PR_1598_Insert_Enum_Table]
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
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Insert_Enum_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarWChar(5) -- String
SET     @Name = 'Jenny'
DECLARE @Age Integer -- Int32
SET     @Age = 25

INSERT INTO [PR_1598_Insert_Enum_Table]
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
	[t].[Age],
	[t].[Gender]
FROM
	[PR_1598_Insert_Enum_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [PR_1598_Insert_Enum_Table]

