﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age Integer -- Int32
SET     @Age = 20

INSERT INTO [PR_1598_Mixed_Table]
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
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[PR_1598_Mixed_Table] [t1]
SET
	[t1].[Age] = @Age
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Age Integer -- Int32
SET     @Age = 25

INSERT INTO [PR_1598_Mixed_Table]
(
	[Id],
	[Age]
)
VALUES
(
	@Id,
	@Age
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 2

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Name VarWChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age Integer -- Int32
SET     @Age = 25
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	[PR_1598_Mixed_Table] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Age] = @Age
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Mixed_Table] [t]
WHERE
	[t].[Id] = 2

